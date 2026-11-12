#ifndef __XCN_KERNEL_XTDK_UTILITY_H
#define __XCN_KERNEL_XTDK_UTILITY_H
#ifdef __XCN__
#include "xtdk_type_traits.h"
namespace houyi_std {

template <typename T>
constexpr typename houyi_std::remove_reference<T>::type &&move(T &&t) noexcept {
  return static_cast<typename houyi_std::remove_reference<T>::type &&>(t);
}

template <typename T>
constexpr T &&forward(typename houyi_std::remove_reference<T>::type &t) noexcept {
  return static_cast<T &&>(t);
}

template <typename T>
constexpr T &&forward(typename houyi_std::remove_reference<T>::type &&t) noexcept {
  static_assert(!houyi_std::is_lvalue_reference<T>::value,
                "Cannot forward an rvalue as an lvalue");
  return static_cast<T &&>(t);
}
} // namespace houyi_std

#endif
#endif