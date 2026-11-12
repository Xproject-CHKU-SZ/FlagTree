/*!\file xtdk_type_traits.h
 * \brief XCN type traits.
 */
#ifndef __XCN_KERNEL_TYPE_TRAITS_H__
#define __XCN_KERNEL_TYPE_TRAITS_H__

#ifdef __XCN__

namespace houyi_std {

template<bool b, class T, class U>
struct conditional {
    typedef T type;
};

template<class T, class U>
struct conditional<false, T, U> {
    typedef U type;
};

template<class _Tp, _Tp __v>
struct integral_constant {
    static const _Tp value = __v;
    typedef _Tp value_type;
    typedef integral_constant type;
};

template<class _Tp, _Tp __v>
const _Tp integral_constant<_Tp, __v>::value;

#define _LIBCPP_BOOL_CONSTANT(__b) integral_constant<bool,(__b)>

typedef _LIBCPP_BOOL_CONSTANT(true) true_type;
typedef _LIBCPP_BOOL_CONSTANT(false) false_type;

template<class _Tp>
struct is_array
    : public false_type {
};
template<class _Tp>
struct is_array<_Tp[]>
    : public true_type {
};
template<class _Tp, int _Np>
struct is_array<_Tp[_Np]>
    : public true_type {
};

template<class _Tp, class _Up>
struct is_same : public false_type {
};
template<class _Tp>
struct is_same<_Tp, _Tp> : public true_type {
};

namespace detail {

typedef char yes_type;
struct no_type {
    char padding[8];
};

template<class U>
yes_type is_class_tester(void(U::*)(void));

template<class U>
no_type is_class_tester(...);

template<typename T>
struct is_class_impl {
    static const bool value =
        sizeof(is_class_tester<T>(0)) == sizeof(yes_type) && !__is_union(T);
};

}

template<class T>
struct is_class : public integral_constant<bool, detail::is_class_impl<T>::value> {
};

template <class T> struct is_pointer : public false_type{};
template <class T> struct is_pointer<T*> : public true_type{};
template <class T> struct is_pointer<T*const> : public true_type{};
template <class T> struct is_pointer<T*const volatile> : public true_type{};
template <class T> struct is_pointer<T*volatile> : public true_type{};

template <class T> struct is_lvalue_reference : false_type {};
template <class T> struct is_lvalue_reference<T &> : true_type {};
#if __cplusplus >= 201402L
template <class T>
constexpr bool is_lvalue_reference_v = is_lvalue_reference<T>::value;
#endif

template<class T> struct remove_cv { typedef T type; };
template<class T> struct remove_cv<const T> { typedef T type; };
template<class T> struct remove_cv<volatile T> { typedef T type; };
template<class T> struct remove_cv<const volatile T> { typedef T type; };
 
template<class T> struct remove_const { typedef T type; };
template<class T> struct remove_const<const T> { typedef T type; };
 
template<class T> struct remove_volatile { typedef T type; };
template<class T> struct remove_volatile<volatile T> { typedef T type; };

template<class T> struct remove_reference { typedef T type; };
template<class T> struct remove_reference<T&> { typedef T type; };
template<class T> struct remove_reference<T&&> { typedef T type; };

template<class T> struct remove_pointer { typedef T type; };
template<class T> struct remove_pointer<T*> { typedef T type; };
template<class T> struct remove_pointer<T* const> { typedef T type; };
template<class T> struct remove_pointer<T* volatile> { typedef T type; };
template<class T> struct remove_pointer<T* const volatile> { typedef T type; };

#if __cplusplus >= 201402L
template <class T> using remove_cv_t = typename remove_cv<T>::type;
template <class T> using remove_const_t = typename remove_const<T>::type;
template <class T> using remove_volatile_t = typename remove_volatile<T>::type;
template <class T> using remove_reference_t = typename remove_reference<T>::type;
template <class T> using remove_pointer_t = typename remove_pointer<T>::type;
#endif

template<bool __B, class __T = void>
struct enable_if {};

template <class __T> struct enable_if<true, __T> {
  typedef __T type;
};

template <class _Tp> struct is_integral {
  enum { value = 0 };
};
template <> struct is_integral<bool> {
  enum { value = 1 };
};
template <> struct is_integral<char> {
  enum { value = 1 };
};
template <> struct is_integral<signed char> {
  enum { value = 1 };
};
template <> struct is_integral<unsigned char> {
  enum { value = 1 };
};
template <> struct is_integral<wchar_t> {
  enum { value = 1 };
};
template <> struct is_integral<short> {
  enum { value = 1 };
};
template <> struct is_integral<unsigned short> {
  enum { value = 1 };
};
template <> struct is_integral<int> {
  enum { value = 1 };
};
template <> struct is_integral<unsigned int> {
  enum { value = 1 };
};
template <> struct is_integral<long> {
  enum { value = 1 };
};
template <> struct is_integral<unsigned long> {
  enum { value = 1 };
};
template <> struct is_integral<long long> {
  enum { value = 1 };
};
template <> struct is_integral<unsigned long long> {
  enum { value = 1 };
};

template <class T>
struct is_floating_point
    : integral_constant<
          bool, is_same<float, typename remove_cv<T>::type>::value ||
                    is_same<double, typename remove_cv<T>::type>::value ||
                    is_same<long double, typename remove_cv<T>::type>::value ||
                    is_same<_Float16, typename remove_cv<T>::type>::value> {};

#if __cplusplus >= 201402L
template< class T >
constexpr bool is_floating_point_v = is_floating_point<T>::value;
#endif

// ToDo: specializes is_arithmetic<_Float16>
template <class _Tp> struct is_arithmetic {
  enum { value = 0 };
};
template <> struct is_arithmetic<bool> {
  enum { value = 1 };
};
template <> struct is_arithmetic<char> {
  enum { value = 1 };
};
template <> struct is_arithmetic<signed char> {
  enum { value = 1 };
};
template <> struct is_arithmetic<unsigned char> {
  enum { value = 1 };
};
template <> struct is_arithmetic<wchar_t> {
  enum { value = 1 };
};
template <> struct is_arithmetic<short> {
  enum { value = 1 };
};
template <> struct is_arithmetic<unsigned short> {
  enum { value = 1 };
};
template <> struct is_arithmetic<int> {
  enum { value = 1 };
};
template <> struct is_arithmetic<unsigned int> {
  enum { value = 1 };
};
template <> struct is_arithmetic<long> {
  enum { value = 1 };
};
template <> struct is_arithmetic<unsigned long> {
  enum { value = 1 };
};
template <> struct is_arithmetic<long long> {
  enum { value = 1 };
};
template <> struct is_arithmetic<unsigned long long> {
  enum { value = 1 };
};
template <> struct is_arithmetic<float> {
  enum { value = 1 };
};
template <> struct is_arithmetic<double> {
  enum { value = 1 };
};

template <class _Tp> struct __numeric_type {
  static void __test(...);
  static _Float16 __test(_Float16);
  static float __test(float);
  static double __test(char);
  static double __test(int);
  static double __test(unsigned);
  static double __test(long);
  static double __test(unsigned long);
  static double __test(long long);
  static double __test(unsigned long long);
  static double __test(double);
  // No support for long double, use double instead.
  static double __test(long double);

  typedef decltype(__test(declval<_Tp>())) type;
  static const bool value = !is_same<type, void>::value;
};

template <> struct __numeric_type<void> { static const bool value = true; };

template <class _A1, class _A2 = void, class _A3 = void,
          bool = __numeric_type<_A1>::value &&__numeric_type<_A2>::value
              &&__numeric_type<_A3>::value>
class __promote_imp {
public:
  static const bool value = false;
};

template <class _A1, class _A2, class _A3>
class __promote_imp<_A1, _A2, _A3, true> {
private:
  typedef typename __promote_imp<_A1>::type __type1;
  typedef typename __promote_imp<_A2>::type __type2;
  typedef typename __promote_imp<_A3>::type __type3;

public:
  typedef decltype(__type1() + __type2() + __type3()) type;
  static const bool value = true;
};

template <class _A1, class _A2> class __promote_imp<_A1, _A2, void, true> {
private:
  typedef typename __promote_imp<_A1>::type __type1;
  typedef typename __promote_imp<_A2>::type __type2;

public:
  typedef decltype(__type1() + __type2()) type;
  static const bool value = true;
};

template <class _A1> class __promote_imp<_A1, void, void, true> {
public:
  typedef typename __numeric_type<_A1>::type type;
  static const bool value = true;
};

template <class _A1, class _A2 = void, class _A3 = void>
class __promote : public __promote_imp<_A1, _A2, _A3> {};

} // namespace xcn_std

#endif // __XCN__
#endif // __XCN_KERNEL_TYPE_TRAITS_H__
