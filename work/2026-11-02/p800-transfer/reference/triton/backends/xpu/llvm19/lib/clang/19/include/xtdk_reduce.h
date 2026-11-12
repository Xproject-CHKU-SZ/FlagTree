#pragma once
#ifndef __XCN_KERNEL_XTDK_REDUCE_H__
#define __XCN_KERNEL_XTDK_REDUCE_H__

#include "xtdk_cooperative_groups_helper.h"
#include "xtdk_type_traits.h"
#include "xtdk_utility.h"

namespace cooperative_groups {
    template <typename Ty> struct plus {__device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {return arg1 + arg2;}};

    template <typename Ty>
    struct less {
        __device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {
            return (arg2 < arg1) ? arg2 : arg1;
        }
    };

    template <typename Ty>
    struct greater {
        __device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {
            return (arg1 < arg2) ? arg2 : arg1;
        }
    };

    template <typename Ty> struct bit_and {__device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {return arg1 & arg2;}};

    template <typename Ty> struct bit_xor {__device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {return arg1 ^ arg2;}};

    template <typename Ty> struct bit_or {__device__ __forceinline__ Ty operator()(Ty arg1, Ty arg2) const {return arg1 | arg2;}};

namespace details {
    template <typename Ty>
    using remove_qual = typename houyi_std::remove_cv<typename houyi_std::remove_reference<Ty>::type>::type;

    template <typename TyLhs, typename TyRhs>
    using is_op_type_same = houyi_std::is_same<remove_qual<TyLhs>, remove_qual<TyRhs>>;

    __CG_STATIC_QUALIFIER__ unsigned laneid() {
        return __lane_id();
    }
    __CG_STATIC_QUALIFIER__ unsigned lanemask32_lt() {
        uint32_t mask = (1u << laneid()) - 1u;
        return mask;
    }

    // Coalesced group support for reduce.
    template <typename TyGroup, typename TyVal, typename TyOp>
    __CG_QUALIFIER__ auto inclusive_scan_non_contiguous(const TyGroup& group, TyVal&& val, TyOp&& op) -> decltype(op(val, val)) {
        const unsigned int groupSize = group.size();
        auto out = val;

        const unsigned int mask = details::_coalesced_group_data_access::get_mask(group);
        unsigned int lanemask = details::lanemask32_lt() & mask;
        unsigned int srcLane = details::laneid();

        const unsigned int base = __ffs(mask)-1; /* lane with rank == 0 */
        const unsigned int rank = __popc(lanemask);

        for (unsigned int i = 1, j = 1; i < groupSize; i <<= 1) {
            if (i <= rank) {
                srcLane -= j;
                j = i; /* maximum possible lane */

                unsigned int begLane = base + rank - i; /* minimum possible lane */

                /*  Next source lane is in the range [ begLane .. srcLane ]
                    *  If begLane < srcLane then do a binary search.
                    */
                while (begLane < srcLane) {
                    const unsigned int halfLane = (begLane + srcLane) >> 1;
                    const unsigned int halfMask = lanemask >> halfLane;
                    const unsigned int d = __popc(halfMask);
                    if (d < i) {
                        srcLane = halfLane - 1; /* halfLane too large */
                    }
                    else if ((i < d) || !(halfMask & 0x01)) {
                        begLane = halfLane + 1; /* halfLane too small */
                    }
                    else {
                        begLane = srcLane = halfLane; /* happen to hit */
                    }
                }
            }

            auto tmp = details::tile::shuffle_dispatch<TyVal>::shfl(out, mask, srcLane, 32);
            if (i <= rank) {
                out = op(out, tmp);
            }
        }
        return out;
    }

    template <typename TyVal, typename TyOp>
    __CG_QUALIFIER__ auto coalesced_reduce_to_one(const coalesced_group& group, TyVal&& val, TyOp&& op) -> decltype(op(val, val)) {
        if (group.size() == 32) {
            auto out = val;
            for (int offset = group.size() >> 1; offset > 0; offset >>= 1) {
                out = op(out, group.shfl_up(out, offset));
            }
            return out;
        }
        else {
            auto scan_result =
                inclusive_scan_non_contiguous(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp>(op));
            return scan_result;
        }
    }

    template <typename TyVal, typename TyOp>
    __CG_QUALIFIER__ auto coalesced_reduce(const coalesced_group& group, TyVal&& val, TyOp&& op) -> decltype(op(val, val)) {
        auto out = coalesced_reduce_to_one(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp>(op));
        if (group.size() == 32) {
            return group.shfl(out, 31);
        }
        else {
            unsigned int group_mask = _coalesced_group_data_access::get_mask(group);
            unsigned int last_thread_id = 31 - __clz(group_mask);
            return details::tile::shuffle_dispatch<TyVal>::shfl(
                houyi_std::forward<TyVal>(out), group_mask, last_thread_id, 32);
        }
    }

    template <typename TyVal, typename TyOp, unsigned int TySize, typename ParentT>
    __CG_QUALIFIER__ auto coalesced_reduce(const thread_block_tile<TySize, ParentT>& group,
                                        TyVal&& val,
                                        TyOp&& op) -> decltype(op(val, val)) {
        auto out = val;
        for (int mask = TySize >> 1; mask > 0; mask >>= 1) {
            out = op(out, group.shfl_xor(out, mask));
        }

        return out;
    }

    template <typename TyVal, typename TyFnInput, typename TyGroup>
    class _redux_dispatch {
    public:
        // Fallback shuffle sync reduction
        template <
            template <class> class TyOp>
        __CG_STATIC_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyOp<TyFnInput>&& op) -> decltype(op(val, val)) {
            //Dispatch to fallback shuffle sync accelerated reduction
            return coalesced_reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp<TyFnInput>>(op));
        }

    };

    // Group support for reduce.
    template <class TyGroup> struct _reduce_group_supported : public houyi_std::false_type {};

    template <unsigned int Sz, typename TyPar>
    struct _reduce_group_supported<cooperative_groups::thread_block_tile<Sz, TyPar>> : public houyi_std::true_type {};
    template <>
    struct _reduce_group_supported<cooperative_groups::coalesced_group>              : public houyi_std::true_type {};
    #if defined(_CG_ABI_EXPERIMENTAL)
    template <unsigned int Sz, typename TyPar>
    struct _reduce_group_supported<cooperative_groups::multi_warp_thread_block_tile<Sz, TyPar>> : public houyi_std::true_type {};
    #endif

    template <typename TyGroup>
    using reduce_group_supported = _reduce_group_supported<details::remove_qual<TyGroup>>;

    template <typename TyVal, typename TyFnInput, template <class> class TyOp, typename TyGroup>
    __CG_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyOp<TyFnInput>&& op) -> decltype(op(val, val)) {
        static_assert(details::is_op_type_same<TyFnInput, TyVal>::value, "Operator and argument types differ");

        using dispatch = details::_redux_dispatch<TyVal, TyFnInput, TyGroup>;
        return dispatch::reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp<TyFnInput>>(op));
    }

    template <typename TyVal, typename TyFnInput, template <class> class TyOp, typename TyGroup>
    __CG_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyOp<TyFnInput>& op) -> decltype(op(val, val)) {
        static_assert(details::is_op_type_same<TyFnInput, TyVal>::value, "Operator and argument types differ");

        using dispatch = details::_redux_dispatch<TyVal, TyFnInput, TyGroup>;
        return dispatch::reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp<TyFnInput>>(op));
    }


    template <typename TyVal, typename TyOp, typename TyGroup>
    __CG_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyOp&& op) -> decltype(op(val, val)) {
        return details::coalesced_reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyOp>(op));
    }

    template <typename Group>
    struct tile_reduce_dispatch;

    template <>
    struct tile_reduce_dispatch<cooperative_groups::coalesced_group> {
        template <typename TyGroup, typename TyVal, typename TyFn>
        __CG_STATIC_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyFn&& op) -> decltype(op(val, val)) {
            return details::reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyFn>(op));
        }
    };

    // Generalized over Size and ParentT so that tiles obtained via
    // cg::tiled_partition<N>(this_thread_block()) — for any power-of-two
    // Size ∈ {1,2,4,8,16,32} and any ParentT — all match this specialization.
    // Without this, only thread_block_tile<32, void> matches and other tile
    // sizes trigger "implicit instantiation of undefined template".
    template <unsigned int Size, typename ParentT>
    struct tile_reduce_dispatch<cooperative_groups::thread_block_tile<Size, ParentT>> {
        template <typename TyGroup, typename TyVal, typename TyFn>
        __CG_STATIC_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyFn&& op) -> decltype(op(val, val)) {
            return details::reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyFn>(op));
        }
    };

    #if defined(_CG_ABI_EXPERIMENTAL)
    template <unsigned int Size, class ParentT>
    struct tile_reduce_dispatch<cooperative_groups::multi_warp_thread_block_tile<Size, ParentT>> {
        template <typename TyVal, typename TyFn>
        _CG_STATIC_QUALIFIER auto reduce(const multi_warp_thread_block_tile<Size, ParentT>& group, TyVal&& val, TyFn&& op) -> decltype(op(val, val)) {
            unsigned int multi_tile_id = group.meta_group_rank(); // tile index within parent thread block
            unsigned int warp_id = group.thread_rank() / 32; // warp index within tile
            const unsigned int num_warps = Size / 32; // warps per tile
            using TyRet = details::remove_qual<TyVal>;
            // Offset = (warps per tile × tile index) + warp index within tile
            // get warp's shared memory address from tile_memory, each has communication_size space
            auto get_warp_scratch_location = [&](int id) {
                return reinterpret_cast<TyRet*>(&group.tile_memory->memory[(multi_tile_id * num_warps + id) * group.communication_size]);
            };

            // intra warp reduce
            TyRet* warp_scratch_location = get_warp_scratch_location(warp_id);
            auto single_warp = coalesced_threads();
            *warp_scratch_location = details::reduce(single_warp, houyi_std::forward<TyRet>(val), houyi_std::forward<TyFn>(op));
            
            group.sync();

            // inter warp reduce, not sure which way is better
            // TyRet result = *warp_scratch_location;
            // if (group.thread_rank() == 0) {
            //     for (int i = 1; i < num_warps; i++) {
            //         result = op(result, *(get_warp_scratch_location(i)));
            //     }
            //     *warp_scratch_location = result;
            // }
            TyRet result = 0;
            if (warp_id == 0) { // the first warp do it
                if (group.thread_rank() < num_warps)
                    result = *(get_warp_scratch_location(group.thread_rank()));
                single_warp.sync();
                *(get_warp_scratch_location(0)) =  details::reduce(single_warp, houyi_std::forward<TyRet>(result), houyi_std::forward<TyFn>(op));
            }
            group.sync();
            return *(get_warp_scratch_location(0));
        }
    };
    #endif

    template <typename TyGroup, typename TyInputVal, typename TyRetVal>
    __CG_QUALIFIER__ void check_reduce_params() {
        static_assert(details::is_op_type_same<TyInputVal, TyRetVal>::value, "Operator input and output types differ");
        static_assert(details::reduce_group_supported<TyGroup>::value, "This group does not exclusively represent a tile");
    };

    template <typename TyGroup, typename TyDstVal, typename TyInputVal, typename TyRetVal>
    __CG_QUALIFIER__ void check_async_reduce_params() {
        check_reduce_params<TyGroup, TyInputVal, TyRetVal>();
        static_assert(details::is_op_type_same<TyDstVal, TyInputVal>::value, "Destination and input types differ");
    }
} // details

template <typename TyGroup, typename TyVal, typename TyFn>
__CG_QUALIFIER__ auto reduce(const TyGroup& group, TyVal&& val, TyFn&& op) -> decltype(op(val, val)) {
    details::check_reduce_params<TyGroup, details::remove_qual<TyVal>, decltype(op(val, val))>();

    using dispatch = details::tile_reduce_dispatch<TyGroup>;
    return dispatch::reduce(group, houyi_std::forward<TyVal>(val), houyi_std::forward<TyFn>(op));
}

} // namespace cooperative_groups

#endif