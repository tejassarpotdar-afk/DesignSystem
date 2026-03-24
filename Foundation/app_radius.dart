/// A comprehensive collection of border radius design tokens based on the
/// Sales App Design System.
///
/// Usage:
///   Container(
///     decoration: BoxDecoration(
///       borderRadius: BorderRadius.circular(AppRadius.radius08),
///     ),
///   )
class AppRadius {
  AppRadius._(); // Prevent instantiation

  /// 0dp — No rounding.
  static const double radius00 = 0;

  /// 2dp — Hairline rounding.
  static const double radius02 = 2;

  /// 4dp — Extra-small rounding.
  static const double radius04 = 4;

  /// 6dp — Small rounding.
  static const double radius06 = 6;

  /// 8dp — Medium-small rounding.
  static const double radius08 = 8;

  /// 12dp — Medium rounding.
  static const double radius12 = 12;

  /// 16dp — Medium-large rounding.
  static const double radius16 = 16;

  /// 20dp — Large rounding.
  static const double radius20 = 20;

  /// 24dp — Extra-large rounding.
  static const double radius24 = 24;

  /// 32dp — 2XL rounding.
  static const double radius32 = 32;

  /// 40dp — 3XL rounding.
  static const double radius40 = 40;

  /// Full radius — pills, circles.
  static const double radiusFull = 9999;
}
