#pragma once

#include <array>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <type_traits>
/* Block the CUDA vendor crt/cuda_tile.h: this header is the XCN
 * implementation of the same cuda::tiles API surface; including both would
 * make every cuda::tiles name ambiguous. */
#define __CUDA_TILE__
/* On the XTDK/HOUYI path, block the CUDA vendor cuda_fp16.h as well: its
 * __half conversions are host-only annotations on XCN, while
 * xcn/kernel/xtdk_fp16.h provides the same __half/__half2 API with working
 * host+device constructors and conversions. The XCUDA CUDA path already ships
 * working __half support through its own runtime wrapper, and pulling the XTDK
 * kernel headers in there collides with the clang CUDA device functions
 * (warpSize, __all, ...), so only do this when included from the HOUYI
 * runtime wrapper. */
#if defined(__CLANG_HOUYI_RUNTIME_WRAPPER_INCLUDED__)
#define __CUDA_FP16_H__
#define __CUDA_FP16_HPP__
#include <xcn/kernel/xtdk_fp16.h>
#endif
#include <cuda_runtime.h>

#ifndef __tile_global__
#define __tile_global__ __global__
#endif

namespace cuda::tiles {
namespace literals {
template <int V, char... Cs> struct literal_value;
template <int V> struct literal_value<V> : std::integral_constant<int, V> {};
template <int V, char C, char... Cs>
struct literal_value<V, C, Cs...> : literal_value<V * 10 + (C - '0'), Cs...> {};
template <char... Cs> constexpr auto operator""_ic() { return literal_value<0, Cs...>{}; }
}  // namespace literals

inline constexpr std::size_t dynamic_extent = static_cast<std::size_t>(-1);
inline constexpr std::size_t tile_lane_count = 64;

__device__ inline std::size_t tile_lane_id() { return static_cast<std::size_t>(threadIdx.x % tile_lane_count); }
__device__ inline bool tile_owns(std::size_t i) { return (i % tile_lane_count) == tile_lane_id(); }
__device__ inline std::size_t tile_local_index(std::size_t i) { return i / tile_lane_count; }

template <typename T = std::size_t, auto... Dims>
struct extents {
  static constexpr std::size_t rank = sizeof...(Dims);
  T values[rank ? rank : 1]{};
  constexpr extents() : values{static_cast<T>(Dims)...} {}
  template <typename... U, typename = std::enable_if_t<sizeof...(U) == rank>>
  constexpr explicit extents(U... v) : values{static_cast<T>(v)...} {}
  constexpr T operator[](std::size_t i) const { return values[i]; }
};
template <typename U> extents(U) -> extents<std::decay_t<U>, dynamic_extent>;
template <typename U, typename V> extents(U, V) -> extents<std::common_type_t<U, V>, dynamic_extent, dynamic_extent>;
template <typename U, typename V, typename W> extents(U, V, W) -> extents<std::common_type_t<U, V, W>, dynamic_extent, dynamic_extent, dynamic_extent>;
template <typename U, typename V, typename W, typename X> extents(U, V, W, X) -> extents<std::common_type_t<U, V, W, X>, dynamic_extent, dynamic_extent, dynamic_extent, dynamic_extent>;

template <auto... Dims>
struct shape {
  template <typename... U> constexpr shape(U...) {}
  static constexpr std::size_t rank = sizeof...(Dims);
  static constexpr std::array<std::size_t, rank> dims{static_cast<std::size_t>(Dims)...};
  static constexpr std::size_t size = [] { std::size_t n = 1; for (auto d : dims) n *= d; return n; }();
};
template <typename... U> shape(U...) -> shape<static_cast<std::size_t>(U::value)...>;

template <typename E>
struct layout_right_mapping {
  using extents_type = E;
  static constexpr std::size_t rank = E::rank;
  E extents_{};
  constexpr layout_right_mapping() = default;
  constexpr explicit layout_right_mapping(E e) : extents_(e) {}
  constexpr std::size_t extent(std::size_t i) const { return extents_[i]; }
  constexpr std::size_t offset(const std::array<std::size_t, rank>& c) const {
    std::size_t result = 0;
    for (std::size_t i = 0; i < rank; ++i) result = result * extents_[i] + c[i];
    return result;
  }
};
template <typename E> layout_right_mapping(E) -> layout_right_mapping<E>;

template <typename E> struct as_mapping { using type = layout_right_mapping<E>; };
template <typename E> struct as_mapping<layout_right_mapping<E>> { using type = layout_right_mapping<E>; };
template <typename E> using as_mapping_t = typename as_mapping<E>::type;

template <typename P, typename E>
struct tensor_span {
  using pointer = P;
  using mapping_type = as_mapping_t<E>;
  static constexpr std::size_t rank = mapping_type::rank;
  P ptr{};
  mapping_type mapping{};
  constexpr tensor_span(P p, E e) : ptr(p), mapping(e) {}
  constexpr P at(const std::array<std::size_t, rank>& c) const { return ptr + mapping.offset(c); }
};
template <typename P, typename E> tensor_span(P, E) -> tensor_span<P, E>;

template <typename T, typename S>
struct tile {
  using element_type = T;
  using shape_type = S;
  static constexpr std::size_t rank = S::rank;
  static constexpr std::size_t size = S::size;
  static constexpr bool replicated = !std::is_pointer_v<T> && (size <= tile_lane_count);
  static constexpr std::size_t local_size = replicated ? size : (size + tile_lane_count - 1) / tile_lane_count;
  T values[local_size ? local_size : 1]{};
  __device__ T& local(std::size_t i) {
    if constexpr (replicated)
      return values[i];
    else
      return values[tile_local_index(i)];
  }
  __device__ const T& local(std::size_t i) const {
    if constexpr (replicated)
      return values[i];
    else
      return values[tile_local_index(i)];
  }
  __device__ T& operator[](std::size_t i) { return local(i); }
  __device__ const T& operator[](std::size_t i) const { return local(i); }
};
template <typename T> struct is_tile : std::false_type {};
template <typename T, typename S> struct is_tile<tile<T, S>> : std::true_type {};
template <typename T> inline constexpr bool is_tile_v = is_tile<std::remove_cv_t<T>>::value;
template <typename T> struct tile_traits;
template <typename T, typename S> struct tile_traits<tile<T, S>> { using element = T; using shape = S; };
template <typename T> using tile_element_t = typename tile_traits<std::remove_cv_t<T>>::element;
template <typename T> using tile_shape_t = typename tile_traits<std::remove_cv_t<T>>::shape;

template <typename T, typename A> constexpr T assume_aligned(T v, A) { return v; }
template <std::size_t A, typename T> constexpr T assume_aligned(T v) { return v; }
template <typename T, typename D> constexpr T assume_divisible(T v, D) { return v; }
template <std::size_t D, typename T> constexpr T assume_divisible(T v) { return v; }

__device__ inline uint3 bid() { return uint3{blockIdx.x, blockIdx.y, blockIdx.z}; }
__device__ inline uint3 num_blocks() { return uint3{gridDim.x, gridDim.y, gridDim.z}; }

template <typename T> struct integer_range {
  struct iterator { T value, step; __device__ T operator*() const { return value; } __device__ void operator++() { value += step; } __device__ bool operator!=(const iterator& o) const { return value < o.value; } };
  T first, last, step;
  __device__ iterator begin() const { return {first, step}; }
  __device__ iterator end() const { return {last, step}; }
};
template <typename T> __device__ inline integer_range<T> irange(T first, T last, T step = 1) { return {first, last, step}; }

template <typename S>
struct shape_index {
  __device__ static std::array<std::size_t, S::rank> coord(std::size_t x) { std::array<std::size_t, S::rank> r{}; for (std::size_t i = S::rank; i-- > 0;) { r[i] = x % S::dims[i]; x /= S::dims[i]; } return r; }
  __device__ static std::size_t linear(const std::array<std::size_t, S::rank>& c) { std::size_t r = 0; for (std::size_t i = 0; i < S::rank; ++i) r = r * S::dims[i] + c[i]; return r; }
};

/* Memory-backed spans (tensor_span over a raw pointer) are always
 * distributed and carry no `replicated` member; report true only when the
 * span type explicitly provides one. */
template <typename T, typename = void>
struct span_replicated : std::false_type {};
template <typename T>
struct span_replicated<T, std::void_t<decltype(T::replicated)>>
    : std::bool_constant<static_cast<bool>(T::replicated)> {};

template <typename Span, typename S>
struct partition_view {
  Span span; S tile_shape{};
  static constexpr std::size_t rank = S::rank;
  using value_type = std::remove_cv_t<std::remove_pointer_t<typename Span::pointer>>;
  using value_tile = tile<value_type, S>;
  constexpr partition_view(Span s, S sh) : span(s), tile_shape(sh) {}
  template <typename... I> __device__ value_tile load_masked(I... index) const {
    static_assert(sizeof...(I) == rank); std::array<std::size_t, rank> base{static_cast<std::size_t>(index)...}; value_tile out{};
    std::size_t first = value_tile::replicated ? 0 : tile_lane_id();
    std::size_t step = value_tile::replicated ? 1 : tile_lane_count;
    for (std::size_t i = first; i < value_tile::size; i += step) { auto local = shape_index<S>::coord(i); std::array<std::size_t, rank> global{}; bool valid = true;
      for (std::size_t d = 0; d < rank; ++d) { global[d] = base[d] * S::dims[d] + local[d]; valid &= global[d] < span.mapping.extent(d); }
      if (valid) out[i] = *span.at(global);
    } return out;
  }
  template <typename... I> __device__ value_tile load(I... i) const { return load_masked(i...); }
  template <typename V, typename... I> __device__ void store_masked(const V& v, I... index) const {
    static_assert(sizeof...(I) == rank); std::array<std::size_t, rank> base{static_cast<std::size_t>(index)...};
    /* When the stored value is replicated but the span is a distributed
     * pointer tile, each lane only holds the addresses of the elements it
     * owns (i % tile_lane_count == lane), so a lane-0-only loop would read
     * out-of-bounds address slots. Let every lane store the span elements
     * it owns instead. */
    if constexpr (value_tile::replicated && !span_replicated<Span>::value) {
      for (std::size_t i = tile_lane_id(); i < value_tile::size; i += tile_lane_count) { auto local = shape_index<S>::coord(i); std::array<std::size_t, rank> global{}; bool valid = true;
        for (std::size_t d = 0; d < rank; ++d) { global[d] = base[d] * S::dims[d] + local[d]; valid &= global[d] < span.mapping.extent(d); }
        if (valid) *span.at(global) = static_cast<value_type>(v[i]);
      }
      return;
    }
    std::size_t first = value_tile::replicated ? 0 : tile_lane_id();
    std::size_t step = value_tile::replicated ? 1 : tile_lane_count;
    if (!value_tile::replicated || tile_lane_id() == 0)
      for (std::size_t i = first; i < value_tile::size; i += step) { auto local = shape_index<S>::coord(i); std::array<std::size_t, rank> global{}; bool valid = true;
        for (std::size_t d = 0; d < rank; ++d) { global[d] = base[d] * S::dims[d] + local[d]; valid &= global[d] < span.mapping.extent(d); }
        if (valid) *span.at(global) = static_cast<value_type>(v[i]);
      }
  }
  template <typename V, typename... I> __device__ void store(const V& v, I... i) const { store_masked(v, i...); }
};
template <typename Span, typename S> partition_view(Span, S) -> partition_view<Span, S>;

template <typename T, typename S> __device__ inline tile<T, S> zeros() { return {}; }
template <typename Tile> __device__ inline Tile zeros() { return {}; }
template <typename Tile> __device__ inline Tile full(tile_element_t<Tile> v) { Tile r{}; std::size_t first = Tile::replicated ? 0 : tile_lane_id(); std::size_t step = Tile::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < Tile::size; i += step) r[i] = v; return r; }
template <typename Tile> __device__ inline Tile iota() { Tile r{}; std::size_t first = Tile::replicated ? 0 : tile_lane_id(); std::size_t step = Tile::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < Tile::size; i += step) r[i] = static_cast<tile_element_t<Tile>>(i); return r; }
template <typename Out, typename In, typename S> __device__ inline tile<Out, S> element_cast(tile<In, S> v) { tile<Out, S> r{}; using R = tile<Out, S>; std::size_t first = R::replicated ? 0 : tile_lane_id(); std::size_t step = R::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < S::size; i += step) r[i] = static_cast<Out>(v[i]); return r; }

template <typename NS, typename T, typename OS> __device__ inline tile<T, NS> reshape(tile<T, OS> v) { static_assert(NS::size == OS::size); tile<T, NS> r{}; using R = tile<T, NS>; std::size_t first = R::replicated ? 0 : tile_lane_id(); std::size_t step = R::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < NS::size; i += step) r[i] = v[i]; return r; }
template <typename T, typename OS, typename NS> __device__ inline tile<T, NS> reshape(tile<T, OS> v, NS) { return reshape<NS>(v); }
template <typename NS, typename T, typename OS> __device__ inline tile<T, NS> broadcast(tile<T, OS> v) { tile<T, NS> r{}; using R = tile<T, NS>; std::size_t first = R::replicated ? 0 : tile_lane_id(); std::size_t step = R::replicated ? 1 : tile_lane_count; constexpr std::size_t off = NS::rank - OS::rank; for (std::size_t i = first; i < NS::size; i += step) { auto c = shape_index<NS>::coord(i); std::array<std::size_t, OS::rank> q{}; for (std::size_t d = 0; d < OS::rank; ++d) q[d] = OS::dims[d] == 1 ? 0 : c[d + off]; r[i] = v[shape_index<OS>::linear(q)]; } return r; }
template <typename T, typename OS, typename NS> __device__ inline tile<T, NS> broadcast(tile<T, OS> v, NS) { return broadcast<NS>(v); }
template <typename T, typename S>
__device__ inline tile<T, shape<S::dims[1], S::dims[0]>> transpose(tile<T, S> v) {
  static_assert(S::rank == 2);
  using OS = shape<S::dims[1], S::dims[0]>;
  tile<T, OS> r{};
  constexpr std::size_t shared_elems = (65536 / sizeof(T)) ? (65536 / sizeof(T)) : 1;
  constexpr std::size_t chunk_elems = S::size < shared_elems ? S::size : shared_elems;
  __shared__ T source[chunk_elems ? chunk_elems : 1];
  for (std::size_t base = 0; base < S::size; base += chunk_elems) {
    std::size_t limit = (base + chunk_elems < S::size) ? chunk_elems : (S::size - base);
    for (std::size_t i = tile_lane_id(); i < limit; i += tile_lane_count)
      source[i] = v[base + i];
    __syncthreads();
    for (std::size_t o = tile_lane_id(); o < OS::size; o += tile_lane_count) {
      auto c = shape_index<OS>::coord(o);
      std::size_t src = c[1] * S::dims[1] + c[0];
      if (src >= base && src < base + limit)
        r[o] = source[src - base];
    }
    __syncthreads();
  }
  return r;
}
template <typename T, typename S> __device__ inline tile<T, S> rsqrt(tile<T, S> v) { tile<T, S> r{}; std::size_t first = decltype(r)::replicated ? 0 : tile_lane_id(); std::size_t step = decltype(r)::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < S::size; i += step) r[i] = static_cast<T>(1.0 / sqrt(static_cast<double>(v[i]))); return r; }

template <typename OutS, typename InS, typename T> __device__ inline T broadcast_value(const tile<T, InS>& v, std::size_t linear) { auto out = shape_index<OutS>::coord(linear); std::array<std::size_t, InS::rank> in{}; constexpr std::size_t off = OutS::rank - InS::rank; for (std::size_t d = 0; d < InS::rank; ++d) in[d] = InS::dims[d] == 1 ? 0 : out[d + off]; return v[shape_index<InS>::linear(in)]; }
template <typename L, typename R, typename Op, typename = std::enable_if_t<is_tile_v<L> || is_tile_v<R>>> __device__ inline auto binary_tile(const L& l, const R& r, Op op) {
  if constexpr (is_tile_v<L> && is_tile_v<R>) { using LS = tile_shape_t<L>; using RS = tile_shape_t<R>; using O = std::conditional_t<(LS::size >= RS::size), LS, RS>; tile<decltype(op(l[0], r[0])), O> out{}; std::size_t first = decltype(out)::replicated ? 0 : tile_lane_id(); std::size_t step = decltype(out)::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < O::size; i += step) out[i] = op(broadcast_value<O>(l, i), broadcast_value<O>(r, i)); return out; }
  else if constexpr (is_tile_v<L>) { using S = tile_shape_t<L>; tile<decltype(op(l[0], r)), S> out{}; std::size_t first = decltype(out)::replicated ? 0 : tile_lane_id(); std::size_t step = decltype(out)::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < S::size; i += step) out[i] = op(l[i], r); return out; }
  else { using S = tile_shape_t<R>; tile<decltype(op(l, r[0])), S> out{}; std::size_t first = decltype(out)::replicated ? 0 : tile_lane_id(); std::size_t step = decltype(out)::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < S::size; i += step) out[i] = op(l, r[i]); return out; }
}
#define CUDA_TILE_BINARY(OP) template <typename L, typename R> __device__ inline auto operator OP(const L& l, const R& r) -> std::enable_if_t<is_tile_v<L> || is_tile_v<R>, decltype(binary_tile(l, r, [](auto a, auto b) { return a OP b; }))> { return binary_tile(l, r, [](auto a, auto b) { return a OP b; }); }
CUDA_TILE_BINARY(+) CUDA_TILE_BINARY(-) CUDA_TILE_BINARY(*) CUDA_TILE_BINARY(/)
CUDA_TILE_BINARY(<) CUDA_TILE_BINARY(>) CUDA_TILE_BINARY(<=) CUDA_TILE_BINARY(>=)
CUDA_TILE_BINARY(==) CUDA_TILE_BINARY(!=) CUDA_TILE_BINARY(&)
#undef CUDA_TILE_BINARY

template <typename P, typename T, typename S> __device__ inline tile<P*, S> operator+(P* p, tile<T, S> i) { tile<P*, S> r{}; for (std::size_t n = tile_lane_id(); n < S::size; n += tile_lane_count) r[n] = p + i[n]; return r; }
template <typename P, typename T, typename S> __device__ inline tile<P*, S> operator+(tile<T, S> i, P* p) { return p + i; }

template <typename P, typename M, typename S> __device__
inline tile<std::remove_cv_t<std::remove_pointer_t<P>>, S>
load_masked(tile<P, S> p, tile<M, S> m,
            std::remove_cv_t<std::remove_pointer_t<P>> pad = {}) {
    using RType = tile<std::remove_cv_t<std::remove_pointer_t<P>>, S>;
    RType r{};
    if constexpr (!tile<P, S>::replicated && RType::replicated) {
        /* Distributed pointer tile: each lane only owns the addresses of the
         * elements with i % tile_lane_count == lane; a lane-0-only loop
         * would read out-of-bounds address slots. Gather through shared
         * memory and replicate the full RType to every lane. */
        using Elem = std::remove_cv_t<std::remove_pointer_t<P>>;
        __shared__ Elem shr[RType::size];
        for (std::size_t i = tile_lane_id(); i < RType::size; i += tile_lane_count)
            shr[i] = m[i] ? *p[i] : pad;
        __syncthreads();
        for (std::size_t i = 0; i < RType::size; ++i) r[i] = shr[i];
        return r;
    }
    std::size_t first = RType::replicated ? 0 : tile_lane_id();
    std::size_t step  = RType::replicated ? 1 : tile_lane_count;
    for (std::size_t i = first; i < RType::size; i += step)
        r[i] = m[i] ? *p[i] : pad;
    return r;
}

template <typename P, typename V, typename M, typename S> __device__
inline void store_masked(tile<P, S> p, tile<V, S> v, tile<M, S> m) {
    using VTile = tile<V, S>;
    if constexpr (!tile<P, S>::replicated && VTile::replicated) {
        /* Distributed pointer tile: each lane only owns the addresses of the
         * elements with i % tile_lane_count == lane; a lane-0-only loop
         * would read out-of-bounds address slots. Every lane stores the
         * elements it owns. */
        for (std::size_t i = tile_lane_id(); i < VTile::size; i += tile_lane_count)
            if (m[i]) *p[i] = v[i];
        return;
    }
    std::size_t first = VTile::replicated ? 0 : tile_lane_id();
    std::size_t step  = VTile::replicated ? 1 : tile_lane_count;
    bool writer_ok    = !VTile::replicated || tile_lane_id() == 0;
    if (!writer_ok) return;
    for (std::size_t i = first; i < VTile::size; i += step)
        if (m[i]) *p[i] = v[i];
}

template <typename T, typename S>
__device__ inline tile<T, shape<S::dims[0], 1>> sum(tile<T, S> v, std::integral_constant<int, 1>) {
  static_assert(S::rank == 2);
  using R = tile<T, shape<S::dims[0], 1>>;
  R r{};
  __shared__ T source[S::size ? S::size : 1];
  __shared__ T reduced[S::dims[0] ? S::dims[0] : 1];
  std::size_t first = tile<T, S>::replicated ? 0 : tile_lane_id();
  std::size_t step = tile<T, S>::replicated ? 1 : tile_lane_count;
  for (std::size_t i = first; i < S::size; i += step)
    source[i] = v[i];
  __syncthreads();
  for (std::size_t i = tile_lane_id(); i < S::dims[0]; i += tile_lane_count) {
    T acc{};
    for (std::size_t j = 0; j < S::dims[1]; ++j)
      acc += source[i * S::dims[1] + j];
    reduced[i] = acc;
  }
  __syncthreads();
  std::size_t out_first = R::replicated ? 0 : tile_lane_id();
  std::size_t out_step = R::replicated ? 1 : tile_lane_count;
  for (std::size_t i = out_first; i < R::size; i += out_step)
    r[i] = reduced[i];
  __syncthreads();
  return r;
}
template <int Axis, typename T, typename S> __device__ inline auto sum(tile<T, S> v) { return sum(v, std::integral_constant<int, Axis>{}); }

template <typename A, typename B, typename C, typename SA, typename SB, typename SC> __device__ inline tile<C, SC> mma(tile<A, SA> a, tile<B, SB> b, tile<C, SC> acc) {
  static_assert(SA::rank == SB::rank && SA::rank == SC::rank);
  if constexpr (SA::rank == 2) {
    static_assert(SA::dims[1] == SB::dims[0]);
    static_assert(SC::dims[0] == SA::dims[0] && SC::dims[1] == SB::dims[1]);
  } else {
    static_assert(SA::dims[2] == SB::dims[1]);
    static_assert(SC::dims[0] == SA::dims[0] &&
                  SC::dims[1] == SA::dims[1] &&
                  SC::dims[2] == SB::dims[2]);
    static_assert(SB::dims[0] == SA::dims[0]); // 批量一致
  }
  __shared__ A a_source[SA::size ? SA::size : 1];
  __shared__ B b_source[SB::size ? SB::size : 1];
  std::size_t a_first = tile<A, SA>::replicated ? 0 : tile_lane_id();
  std::size_t a_step = tile<A, SA>::replicated ? 1 : tile_lane_count;
  std::size_t b_first = tile<B, SB>::replicated ? 0 : tile_lane_id();
  std::size_t b_step = tile<B, SB>::replicated ? 1 : tile_lane_count;
  for (std::size_t i = a_first; i < SA::size; i += a_step)
    a_source[i] = a[i];
  for (std::size_t i = b_first; i < SB::size; i += b_step)
    b_source[i] = b[i];
  __syncthreads();
  if constexpr (SA::rank == 2) {
    for (std::size_t idx = tile_lane_id(); idx < SC::size; idx += tile_lane_count) {
      std::size_t m = idx / SB::dims[1];
      std::size_t n = idx % SB::dims[1];
      for (std::size_t k = 0; k < SA::dims[1]; ++k)
        acc[idx] += static_cast<C>(a_source[m * SA::dims[1] + k]) * static_cast<C>(b_source[k * SB::dims[1] + n]);
    }
  }
  else {
    static_assert(SA::rank == 3);
    constexpr std::size_t M = SA::dims[1], K = SA::dims[2], N = SB::dims[2];
    for (std::size_t idx = tile_lane_id(); idx < SC::size; idx += tile_lane_count) {
      std::size_t q = idx / (M * N);
      std::size_t rem = idx % (M * N);
      std::size_t m = rem / N;
      std::size_t n = rem % N;
      for (std::size_t k = 0; k < K; ++k)
        acc[idx] += static_cast<C>(a_source[(q * M + m) * K + k]) * static_cast<C>(b_source[(q * K + k) * N + n]);
    }
  }
  __syncthreads();
  return acc;
}

template <typename T, typename S> __device__ inline tile<T, S> operator-(tile<T, S> v) { tile<T, S> r{}; std::size_t first = decltype(r)::replicated ? 0 : tile_lane_id(); std::size_t step = decltype(r)::replicated ? 1 : tile_lane_count; for (std::size_t i = first; i < S::size; i += step) r[i] = -v[i]; return r; }
}  // namespace cuda::tiles

