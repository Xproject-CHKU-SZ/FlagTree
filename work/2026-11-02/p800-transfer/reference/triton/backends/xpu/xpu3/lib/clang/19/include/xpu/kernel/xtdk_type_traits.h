/*!\file xtdk_type_traits.h
 * \brief XPU type traits.
 */
#ifndef __XPU_KERNEL_TYPE_TRAITS_H
#define __XPU_KERNEL_TYPE_TRAITS_H

#if defined(__xpu__)

namespace xpu_std {

template <bool b, class T, class U> struct conditional {
  typedef T type;
};

template <class T, class U> struct conditional<false, T, U> {
  typedef U type;
};
#if __cplusplus >= 201103L
template <class _Tp, _Tp __v> struct integral_constant {
  static constexpr _Tp value = __v;
  typedef _Tp value_type;
  typedef integral_constant<_Tp, __v> type;
  constexpr operator value_type() const noexcept { return value; }
};
#else
template <class _Tp, _Tp __v> struct integral_constant {
  static const _Tp value = __v;
  typedef _Tp value_type;
  typedef integral_constant<_Tp, __v> type;
};
#endif

template <class _Tp, _Tp __v> const _Tp integral_constant<_Tp, __v>::value;

#define _LIBCPP_BOOL_CONSTANT(__b) integral_constant<bool, (__b)>

typedef _LIBCPP_BOOL_CONSTANT(true) true_type;
typedef _LIBCPP_BOOL_CONSTANT(false) false_type;

/// remove_const
template <typename _Tp> struct remove_const {
  typedef _Tp type;
};

template <typename _Tp> struct remove_const<_Tp const> {
  typedef _Tp type;
};

/// remove_volatile
template <typename _Tp> struct remove_volatile {
  typedef _Tp type;
};

template <typename _Tp> struct remove_volatile<_Tp volatile> {
  typedef _Tp type;
};

/// remove_cv
template <typename _Tp> struct remove_cv {
  typedef typename remove_const<typename remove_volatile<_Tp>::type>::type type;
};

template <typename> struct __is_integral_helper : public false_type {};

template <> struct __is_integral_helper<bool> : public true_type {};

template <> struct __is_integral_helper<char> : public true_type {};

template <> struct __is_integral_helper<signed char> : public true_type {};

template <> struct __is_integral_helper<unsigned char> : public true_type {};

#ifdef _GLIBCXX_USE_WCHAR_T
template <> struct __is_integral_helper<wchar_t> : public true_type {};
#endif

#ifdef _GLIBCXX_USE_CHAR8_T
template <> struct __is_integral_helper<char8_t> : public true_type {};
#endif
template <> struct __is_integral_helper<short> : public true_type {};

template <> struct __is_integral_helper<unsigned short> : public true_type {};

template <> struct __is_integral_helper<int> : public true_type {};

template <> struct __is_integral_helper<unsigned int> : public true_type {};

template <> struct __is_integral_helper<long> : public true_type {};

template <> struct __is_integral_helper<unsigned long> : public true_type {};

template <> struct __is_integral_helper<long long> : public true_type {};

template <>
struct __is_integral_helper<unsigned long long> : public true_type {};

// Conditionalizing on __STRICT_ANSI__ here will break any port that
// uses one of these types for size_t.
#if defined(__GLIBCXX_TYPE_INT_N_0)
template <>
struct __is_integral_helper<__GLIBCXX_TYPE_INT_N_0> : public true_type {};

template <>
struct __is_integral_helper<unsigned __GLIBCXX_TYPE_INT_N_0>
    : public true_type {};
#endif
#if defined(__GLIBCXX_TYPE_INT_N_1)
template <>
struct __is_integral_helper<__GLIBCXX_TYPE_INT_N_1> : public true_type {};

template <>
struct __is_integral_helper<unsigned __GLIBCXX_TYPE_INT_N_1>
    : public true_type {};
#endif
#if defined(__GLIBCXX_TYPE_INT_N_2)
template <>
struct __is_integral_helper<__GLIBCXX_TYPE_INT_N_2> : public true_type {};

template <>
struct __is_integral_helper<unsigned __GLIBCXX_TYPE_INT_N_2>
    : public true_type {};
#endif
#if defined(__GLIBCXX_TYPE_INT_N_3)
template <>
struct __is_integral_helper<__GLIBCXX_TYPE_INT_N_3> : public true_type {};

template <>
struct __is_integral_helper<unsigned __GLIBCXX_TYPE_INT_N_3>
    : public true_type {};
#endif

/// is_integral
template <typename _Tp>
struct is_integral
    : public __is_integral_helper<typename remove_cv<_Tp>::type>::type {};

template <typename> struct __is_floating_point_helper : public false_type {};

template <> struct __is_floating_point_helper<float> : public true_type {};

template <> struct __is_floating_point_helper<double> : public true_type {};

template <>
struct __is_floating_point_helper<long double> : public true_type {};

#if !defined(__STRICT_ANSI__) && defined(_GLIBCXX_USE_FLOAT128) &&             \
    !defined(__CUDACC__)
template <> struct __is_floating_point_helper<__float128> : public true_type {};
#endif

/// is_floating_point
template <typename _Tp>
struct is_floating_point
    : public __is_floating_point_helper<typename remove_cv<_Tp>::type>::type {};

template <class _Tp> struct is_array : public false_type {};
template <class _Tp> struct is_array<_Tp[]> : public true_type {};
template <class _Tp, int _Np> struct is_array<_Tp[_Np]> : public true_type {};

template <class _Tp, class _Up> struct is_same : public false_type {};
template <class _Tp> struct is_same<_Tp, _Tp> : public true_type {};
template<class T, class U> inline constexpr bool is_same_v = is_same<T, U>::value;

namespace detail {

typedef char yes_type;
struct no_type {
  char padding[8];
};

template <class U> yes_type is_class_tester(void (U::*)(void));

template <class U> no_type is_class_tester(...);

template <typename T> struct is_class_impl {
  static const bool value =
      sizeof(is_class_tester<T>(0)) == sizeof(yes_type) && !__is_union(T);
};

} // namespace detail

template <class T>
struct is_class
    : public integral_constant<bool, detail::is_class_impl<T>::value> {};

template <class T> struct is_pointer : public false_type {};
template <class T> struct is_pointer<T *> : public true_type {};
template <class T> struct is_pointer<T *const> : public true_type {};
template <class T> struct is_pointer<T *const volatile> : public true_type {};
template <class T> struct is_pointer<T *volatile> : public true_type {};

template <class T> struct remove_pointer {
  typedef T type;
};
template <class T> struct remove_pointer<T *> {
  typedef T type;
};
template <class T> struct remove_pointer<T *const> {
  typedef T type;
};
template <class T> struct remove_pointer<T *volatile> {
  typedef T type;
};
template <class T> struct remove_pointer<T *const volatile> {
  typedef T type;
};

template<class T> using remove_pointer_t = typename remove_pointer<T>::type;
template <bool B, class T = void> struct enable_if {
  typedef T type;
};

template <class T> struct enable_if<false, T> {};

// come from std type traits
template <class T> struct is_const : false_type {};
template<class T> struct is_const<const T> : true_type {};
template<class T> inline constexpr bool is_const_v = is_const<T>::value;

template<class T>
struct is_arithmetic : integral_constant<bool, is_integral<T>::value ||
                                        is_floating_point<T>::value> {};

namespace detail
{
  template<typename T, bool = xpu_std::is_arithmetic<T>::value>
  struct is_signed : integral_constant<bool, T(-1) < T(0)> {};

  template<typename T>
  struct is_signed<T, false> : false_type {};
}

template<typename T>
struct is_signed : detail::is_signed<T>::type {};
template<class T> inline constexpr bool is_signed_v = is_signed<T>::value;

namespace detail
{
  template<typename T,bool = xpu_std::is_arithmetic<T>::value>
  struct is_unsigned : integral_constant<bool, T(0) < T(-1)> {};
  template<typename T>
  struct is_unsigned<T,false> : false_type {};
} // namespace detail

template<typename T>
struct is_unsigned : detail::is_unsigned<T>::type {};
template<class T> inline constexpr bool is_unsigned_v = is_unsigned<T>::value;

template<class T> struct is_reference : false_type {};
template<class T> struct is_reference<T&> : true_type {};
template<class T> struct is_reference<T&&> : true_type {};

template<class T> struct is_lvalue_reference     : false_type {};
template<class T> struct is_lvalue_reference<T&> : true_type {};
template< class T > inline constexpr bool is_lvalue_reference_v = is_lvalue_reference<T>::value;

template<class T> struct is_volatile : false_type {};
template<class T> struct is_volatile<volatile T> : true_type {};
template< class T > inline constexpr bool is_volatile_v = is_volatile<T>::value;

template<class T> struct is_void : xpu_std::is_same<void, typename xpu_std::remove_cv<T>::type> {};
template<class T, unsigned N = 0> struct extent : integral_constant<unsigned long long, 0> {};
template<class T> struct extent<T[], 0> : integral_constant<unsigned long long, 0> {};
template<class T, unsigned N> struct extent<T[], N> : xpu_std::extent<T, N - 1> {};
template<class T, unsigned long long I> struct extent<T[I], 0> : integral_constant<unsigned long long, I> {};
template<class T, unsigned long long I, unsigned N> struct extent<T[I], N> : xpu_std::extent<T, N - 1> {};
template< class T, unsigned N = 0 > inline constexpr unsigned long long extent_v = extent<T, N>::value;
template<class T> struct remove_extent { using type = T; };
template<class T> struct remove_extent<T[]> { using type = T; };
template<class T, unsigned long long N> struct remove_extent<T[N]> { using type = T; };

template< bool B >
using bool_constant = integral_constant<bool, B>;
template<class B> struct negation : xpu_std::bool_constant<!bool(B::value)> { };
template< class B > inline constexpr bool negation_v = negation<B>::value;

template< bool B, class T, class F >
using conditional_t = typename conditional<B,T,F>::type;
template<class...> struct disjunction : false_type {};
template<class B1> struct disjunction<B1> : B1 {};
template<class B1, class... Bn> struct disjunction<B1, Bn...>
    : xpu_std::conditional_t<bool(B1::value), B1, disjunction<Bn...>>  {};


template<class...> struct conjunction : true_type {};
template<class B1> struct conjunction<B1> : B1 {};
template<class B1, class... Bn> struct conjunction<B1, Bn...>
    : xpu_std::conditional_t<bool(B1::value), conjunction<Bn...>, B1> {};
template< class... B > inline constexpr bool conjunction_v = conjunction<B...>::value;

template<class T> struct remove_reference { typedef T type; };
template<class T> struct remove_reference<T&> { typedef T type; };
template<class T> struct remove_reference<T&&> { typedef T type; };

template<class T>
struct is_function : integral_constant<
    bool,
    !xpu_std::is_const<const T>::value && !xpu_std::is_reference<T>::value
> {};

namespace detail
{
  template<class T>
  struct type_identity { using type = T; }; // or use std::type_identity (since C++20)
  template<class T>
  __attribute__((device)) __attribute__((host)) auto try_add_pointer(int) -> type_identity<typename xpu_std::remove_reference<T>::type*>; // usual case
} // namespace detail

template<class T>
struct add_pointer : decltype(detail::try_add_pointer<T>(0)) {};

template<class T> struct decay
{
private:
    typedef typename xpu_std::remove_reference<T>::type U;
public:
    typedef typename xpu_std::conditional<
        xpu_std::is_array<U>::value,
        typename xpu_std::add_pointer<typename xpu_std::remove_extent<U>::type>::type,
        typename xpu_std::conditional<
            xpu_std::is_function<U>::value,
            typename xpu_std::add_pointer<U>::type,
            typename xpu_std::remove_cv<U>::type
        >::type
    >::type type;
};
template< class T > using decay_t = typename decay<T>::type;
template<typename _Tp> struct is_trivially_copyable : public integral_constant<bool, __is_trivially_copyable(_Tp)> { };
template< class T > inline constexpr bool is_trivially_copyable_v = is_trivially_copyable<T>::value;

template<typename _Tp> struct is_empty : public integral_constant<bool, __is_empty(_Tp)> { };
template< class T > inline constexpr bool is_empty_v = is_empty<T>::value;

namespace detail
{
    template<class T> // Note that “cv void&” is a substitution failure
    __attribute__((device)) __attribute__((host)) auto try_add_lvalue_reference(int) -> type_identity<T&>;

    template<class T>
    __attribute__((device)) __attribute__((host)) auto try_add_rvalue_reference(int) -> type_identity<T&&>;
} // namespace detail

template<class T>
struct add_lvalue_reference
    : decltype(detail::try_add_lvalue_reference<T>(0)) {};

template<class T>
struct add_rvalue_reference
    : decltype(detail::try_add_rvalue_reference<T>(0)) {};

template<typename T>
typename add_rvalue_reference<T>::type declval() noexcept
{
    //static_assert(false, "declval not allowed in an evaluated context");
}
// common type
template<class...> struct common_type {};
template<class T> struct common_type<T> : common_type<T, T> {};
namespace detail
{
  template<class...>
  using void_t = void;

  template<class T1, class T2>
  using conditional_result_t = decltype(false ? xpu_std::declval<T1>() : xpu_std::declval<T2>());

  template<class, class, class = void>
  struct decay_conditional_result {};
  template<class T1, class T2>
  struct decay_conditional_result<T1, T2, void_t<conditional_result_t<T1, T2>>>
      : xpu_std::decay<conditional_result_t<T1, T2>> {};

  template<class T1, class T2, class = void>
  struct common_type_2_impl : decay_conditional_result<const T1&, const T2&> {};

  // C++11 implementation:
  // template<class, class, class = void>
  // struct common_type_2_impl {};

  template<class T1, class T2>
  struct common_type_2_impl<T1, T2, void_t<conditional_result_t<T1, T2>>>
      : decay_conditional_result<T1, T2> {};
}
template<class T1, class T2>
struct common_type<T1, T2> : xpu_std::conditional<xpu_std::is_same<T1, typename xpu_std::decay<T1>::type>::value &&
                       xpu_std::is_same<T2, typename xpu_std::decay<T2>::type>::value,
                       detail::common_type_2_impl<T1, T2>,
                       common_type<typename xpu_std::decay<T1>::type,
                                   typename xpu_std::decay<T2>::type>>::type {};

namespace detail
{
  template<class AlwaysVoid, class T1, class T2, class... R>
  struct common_type_multi_impl {};
  template<class T1, class T2, class...R>
  struct common_type_multi_impl<void_t<typename common_type<T1, T2>::type>, T1, T2, R...>
      : common_type<typename common_type<T1, T2>::type, R...> {};
}

template<class T1, class T2, class... R>
struct common_type<T1, T2, R...> : detail::common_type_multi_impl<void, T1, T2, R...> {};

template< class... T > using common_type_t = typename common_type<T...>::type;

template<typename _Unqualified, bool _IsConst, bool _IsVol>
  struct __cv_selector;

template<typename _Unqualified>
  struct __cv_selector<_Unqualified, false, false>
  { typedef _Unqualified __type; };

template<typename _Unqualified>
  struct __cv_selector<_Unqualified, false, true>
  { typedef volatile _Unqualified __type; };

template<typename _Unqualified>
  struct __cv_selector<_Unqualified, true, false>
  { typedef const _Unqualified __type; };

template<typename _Unqualified>
  struct __cv_selector<_Unqualified, true, true>
  { typedef const volatile _Unqualified __type; };

template<typename _Qualified, typename _Unqualified,
    bool _IsConst = is_const<_Qualified>::value,
    bool _IsVol = is_volatile<_Qualified>::value>
  class __match_cv_qualifiers
  {
    typedef __cv_selector<_Unqualified, _IsConst, _IsVol> __match;

  public:
    typedef typename __match::__type __type;
  };

template<typename _Tp>
  struct is_enum
  : public integral_constant<bool, __is_enum(_Tp)>
  { };

template<typename _Tp>
  struct __make_unsigned
  { typedef _Tp __type; };

template<>
  struct __make_unsigned<char>
  { typedef unsigned char __type; };

template<>
  struct __make_unsigned<signed char>
  { typedef unsigned char __type; };

template<>
  struct __make_unsigned<short>
  { typedef unsigned short __type; };

template<>
  struct __make_unsigned<int>
  { typedef unsigned int __type; };

template<>
  struct __make_unsigned<long>
  { typedef unsigned long __type; };

template<>
  struct __make_unsigned<long long>
  { typedef unsigned long long __type; };

#if defined(__GLIBCXX_TYPE_INT_N_0)
template<>
  struct __make_unsigned<__GLIBCXX_TYPE_INT_N_0>
  { typedef unsigned __GLIBCXX_TYPE_INT_N_0 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_1)
template<>
  struct __make_unsigned<__GLIBCXX_TYPE_INT_N_1>
  { typedef unsigned __GLIBCXX_TYPE_INT_N_1 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_2)
template<>
  struct __make_unsigned<__GLIBCXX_TYPE_INT_N_2>
  { typedef unsigned __GLIBCXX_TYPE_INT_N_2 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_3)
template<>
  struct __make_unsigned<__GLIBCXX_TYPE_INT_N_3>
  { typedef unsigned __GLIBCXX_TYPE_INT_N_3 __type; };
#endif
#if defined(_GLIBCXX_USE_CHAR8_T)
template<>
  struct __make_unsigned<char8_t>
  { typedef unsigned char __type; };
#endif

template<typename _Tp,
    bool _IsInt = is_integral<_Tp>::value,
    bool _IsEnum = is_enum<_Tp>::value>
  class __make_unsigned_selector;

template<typename _Tp>
  class __make_unsigned_selector<_Tp, true, false>
  {
    using __unsigned_type = typename __make_unsigned<typename remove_cv<_Tp>::type>::__type;
  public:
    using __type = typename __match_cv_qualifiers<_Tp, __unsigned_type>::__type;
  };

  class __make_unsigned_selector_base
  {
  protected:
    template<typename...> struct _List { };

    template<typename _Tp, typename... _Up>
      struct _List<_Tp, _Up...> : _List<_Up...>
      { static constexpr unsigned long long __size = sizeof(_Tp); };

    template<unsigned long long _Sz, typename _Tp, bool = (_Sz <= _Tp::__size)>
      struct __select;

    template<unsigned long long _Sz, typename _Uint, typename... _UInts>
      struct __select<_Sz, _List<_Uint, _UInts...>, true>
      { using __type = _Uint; };

    template<unsigned long long _Sz, typename _Uint, typename... _UInts>
      struct __select<_Sz, _List<_Uint, _UInts...>, false>
      : __select<_Sz, _List<_UInts...>>
      { };
  };

  // Choose unsigned integer type with the smallest rank and same size as _Tp
  template<typename _Tp>
    class __make_unsigned_selector<_Tp, false, true>
    : __make_unsigned_selector_base
    {
      // With -fshort-enums, an enum may be as small as a char.
      using _UInts = _List<unsigned char, unsigned short, unsigned int,
			   unsigned long, unsigned long long>;
      using __unsigned_type = typename __select<sizeof(_Tp), _UInts>::__type;
    public:
      using __type = typename __match_cv_qualifiers<_Tp, __unsigned_type>::__type;
    };

// make signed
template<typename _Tp>
  struct __make_signed
  { typedef _Tp __type; };

template<>
  struct __make_signed<char>
  { typedef signed char __type; };

template<>
  struct __make_signed<unsigned char>
  { typedef signed char __type; };

template<>
  struct __make_signed<unsigned short>
  { typedef signed short __type; };

template<>
  struct __make_signed<unsigned int>
  { typedef signed int __type; };

template<>
  struct __make_signed<unsigned long>
  { typedef signed long __type; };

template<>
  struct __make_signed<unsigned long long>
  { typedef signed long long __type; };

#if defined(__GLIBCXX_TYPE_INT_N_0)
template<>
  struct __make_signed<unsigned __GLIBCXX_TYPE_INT_N_0>
  { typedef __GLIBCXX_TYPE_INT_N_0 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_1)
template<>
  struct __make_signed<unsigned __GLIBCXX_TYPE_INT_N_1>
  { typedef __GLIBCXX_TYPE_INT_N_1 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_2)
template<>
  struct __make_signed<unsigned __GLIBCXX_TYPE_INT_N_2>
  { typedef __GLIBCXX_TYPE_INT_N_2 __type; };
#endif
#if defined(__GLIBCXX_TYPE_INT_N_3)
  template<>
  struct __make_signed<unsigned __GLIBCXX_TYPE_INT_N_3>
  { typedef __GLIBCXX_TYPE_INT_N_3 __type; };
#endif

// Select between integral and enum: not possible to be both.
template<typename _Tp,
	bool _IsInt = is_integral<_Tp>::value,
	bool _IsEnum = is_enum<_Tp>::value>
  class __make_signed_selector;

template<typename _Tp>
  class __make_signed_selector<_Tp, true, false>
  {
  using __signed_type = typename __make_signed<typename remove_cv<_Tp>::type>::__type;
  public:
    using __type = typename __match_cv_qualifiers<_Tp, __signed_type>::__type;
  };

// Choose signed integer type with the smallest rank and same size as _Tp
template<typename _Tp>
  class __make_signed_selector<_Tp, false, true>
  {
    typedef typename __make_unsigned_selector<_Tp>::__type __unsigned_type;
    public:
      typedef typename __make_signed_selector<__unsigned_type>::__type __type;
    };

// wchar_t, char16_t and char32_t are integral types but are neither
// signed integer types nor unsigned integer types, so must be
// transformed to the signed integer type with the smallest rank.
// Use the partial specialization for enumeration types to do that.
#if defined(_GLIBCXX_USE_CHAR8_T)
template<>
  struct __make_signed<char8_t>
  {
    using __type = typename __make_signed_selector<char8_t, false, true>::__type;
  };
#endif

// Given an integral/enum type, return the corresponding signed
// integer type.
// Primary template.
template<typename _Tp>
  struct make_signed
  { typedef typename __make_signed_selector<_Tp>::__type type; };

template<> struct make_signed<bool>;
template<typename _Tp> using make_signed_t = typename make_signed<_Tp>::type;

// std::invoke_result
struct __invoke_memfun_ref { };
struct __invoke_memfun_deref { };
struct __invoke_memobj_ref { };
struct __invoke_memobj_deref { };
struct __invoke_other { };
template<typename _Tp> using __remove_cvref_t
    = typename xpu_std::remove_cv<typename xpu_std::remove_reference<_Tp>::type>::type;

template<typename...>
  struct __or_;

template<>
  struct __or_<>
  : public false_type
  { };

template<typename _B1>
  struct __or_<_B1>
  : public _B1
  { };

template<typename _B1, typename _B2>
  struct __or_<_B1, _B2>
  : public xpu_std::conditional<_B1::value, _B1, _B2>::type
  { };

template<typename _B1, typename _B2, typename _B3, typename... _Bn>
  struct __or_<_B1, _B2, _B3, _Bn...>
  : public xpu_std::conditional<_B1::value, _B1, __or_<_B2, _B3, _Bn...>>::type
  { };

template<typename _Base, typename _Derived>
  struct is_base_of
  : public integral_constant<bool, __is_base_of(_Base, _Derived)>
  { };

template<class T>
struct is_member_pointer_helper : public false_type {};

template<class T, class U>
struct is_member_pointer_helper<T U::*> : public true_type {};

template<class T>
struct is_member_pointer : public is_member_pointer_helper<typename xpu_std::remove_cv<T>::type> {};

template<class T>
struct is_member_function_pointer_helper : public false_type {};

template<class T, class U>
struct is_member_function_pointer_helper<T U::*> : xpu_std::is_function<T> {};

template<class T>
struct is_member_function_pointer
    : is_member_function_pointer_helper<typename xpu_std::remove_cv<T>::type> {};

template<class T>
struct is_member_object_pointer : public integral_constant<
                                      bool,
                                      xpu_std::is_member_pointer<T>::value &&
                                      !xpu_std::is_member_function_pointer<T>::value
                                  > {};
template<typename _Tp>
  struct __success_type
  { typedef _Tp type; };

struct __failure_type
{ };

template<typename _Tp, typename _Tag>
  struct __result_of_success : public __success_type<_Tp>
  { using __invoke_type = _Tag; };

template<typename _Tp, typename _Up = __remove_cvref_t<_Tp>>
  struct __inv_unwrap
  {
    using type = _Tp;
  };

template<typename _Tp>
  class reference_wrapper;

template<typename _Tp, typename _Up>
  struct __inv_unwrap<_Tp, reference_wrapper<_Up>>
  {
    using type = _Up&;
  };

template<bool, bool, typename _Functor, typename... _ArgTypes>
struct __result_of_impl
{
  typedef __failure_type type;
};
struct __result_of_memobj_ref_impl
{
  template<typename _Fp, typename _Tp1>
    static __result_of_success<decltype(
    xpu_std::declval<_Tp1>().*xpu_std::declval<_Fp>()
    ), __invoke_memobj_ref> _S_test(int);

  template<typename, typename>
    static __failure_type _S_test(...);
};

template<typename _MemPtr, typename _Arg>
  struct __result_of_memobj_ref
  : private __result_of_memobj_ref_impl
  {
    typedef decltype(_S_test<_MemPtr, _Arg>(0)) type;
  };

template<typename _MemPtr, typename _Arg>
  struct __result_of_memobj;

struct __result_of_memobj_deref_impl
{
  template<typename _Fp, typename _Tp1>
    static __result_of_success<decltype(
    (*xpu_std::declval<_Tp1>()).*xpu_std::declval<_Fp>()
    ), __invoke_memobj_deref> _S_test(int);

  template<typename, typename>
    static __failure_type _S_test(...);
};

template<typename _MemPtr, typename _Arg>
  struct __result_of_memobj_deref
  : private __result_of_memobj_deref_impl
  {
    typedef decltype(_S_test<_MemPtr, _Arg>(0)) type;
  };

template<typename _Res, typename _Class, typename _Arg>
  struct __result_of_memobj<_Res _Class::*, _Arg>
  {
    typedef __remove_cvref_t<_Arg> _Argval;
    typedef _Res _Class::* _MemPtr;
    typedef typename conditional<__or_<is_same<_Argval, _Class>,
      is_base_of<_Class, _Argval>>::value,
      __result_of_memobj_ref<_MemPtr, _Arg>,
      __result_of_memobj_deref<_MemPtr, _Arg>
    >::type::type type;
  };

struct __result_of_memfun_ref_impl
{
  template<typename _Fp, typename _Tp1, typename... _Args>
    static __result_of_success<decltype(
    (xpu_std::declval<_Tp1>().*xpu_std::declval<_Fp>())(xpu_std::declval<_Args>()...)
    ), __invoke_memfun_ref> _S_test(int);

  template<typename...>
    static __failure_type _S_test(...);
};

template<typename _MemPtr, typename _Arg, typename... _Args>
  struct __result_of_memfun_ref
  : private __result_of_memfun_ref_impl
  {
    typedef decltype(_S_test<_MemPtr, _Arg, _Args...>(0)) type;
  };

struct __result_of_memfun_deref_impl
{
  template<typename _Fp, typename _Tp1, typename... _Args>
    static __result_of_success<decltype(
    ((*xpu_std::declval<_Tp1>()).*xpu_std::declval<_Fp>())(xpu_std::declval<_Args>()...)
    ), __invoke_memfun_deref> _S_test(int);

  template<typename...>
    static __failure_type _S_test(...);
};

template<typename _MemPtr, typename _Arg, typename... _Args>
  struct __result_of_memfun_deref
  : private __result_of_memfun_deref_impl
  {
    typedef decltype(_S_test<_MemPtr, _Arg, _Args...>(0)) type;
  };

template<typename _MemPtr, typename _Arg, typename... _Args>
  struct __result_of_memfun;

template<typename _Res, typename _Class, typename _Arg, typename... _Args>
  struct __result_of_memfun<_Res _Class::*, _Arg, _Args...>
  {
    typedef typename xpu_std::remove_reference<_Arg>::type _Argval;
    typedef _Res _Class::* _MemPtr;
    typedef typename conditional<is_base_of<_Class, _Argval>::value,
      __result_of_memfun_ref<_MemPtr, _Arg, _Args...>,
      __result_of_memfun_deref<_MemPtr, _Arg, _Args...>
    >::type::type type;
  };
  
template<typename _MemPtr, typename _Arg>
  struct __result_of_impl<true, false, _MemPtr, _Arg>
  : public __result_of_memobj<typename xpu_std::decay<_MemPtr>::type,
      typename __inv_unwrap<_Arg>::type>
  { };

template<typename _MemPtr, typename _Arg, typename... _Args>
  struct __result_of_impl<false, true, _MemPtr, _Arg, _Args...>
  : public __result_of_memfun<typename xpu_std::decay<_MemPtr>::type,
      typename __inv_unwrap<_Arg>::type, _Args...>
  { };

struct __result_of_other_impl
{
  template<typename _Fn, typename... _Args>
    static __result_of_success<decltype(
    xpu_std::declval<_Fn>()(xpu_std::declval<_Args>()...)
    ), __invoke_other> _S_test(int);

  template<typename...>
    static __failure_type _S_test(...);
};

template<typename _Functor, typename... _ArgTypes>
  struct __result_of_impl<false, false, _Functor, _ArgTypes...>
  : private __result_of_other_impl
  {
    typedef decltype(_S_test<_Functor, _ArgTypes...>(0)) type;
  };

template<typename _Functor, typename... _ArgTypes>
  struct __invoke_result
  : public __result_of_impl<
      is_member_object_pointer<
        typename xpu_std::remove_reference<_Functor>::type
      >::value,
      is_member_function_pointer<
        typename xpu_std::remove_reference<_Functor>::type
      >::value,
_Functor, _ArgTypes...
    >::type
  { };

template<typename _Functor, typename... _ArgTypes>
  struct invoke_result : public __invoke_result<_Functor, _ArgTypes...> { };
} // namespace xpu_std

#endif // defined(__xpu__)
#endif // __XPU_KERNEL_TYPE_TRAITS_H
