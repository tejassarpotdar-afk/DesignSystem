/// A comprehensive collection of border width design tokens based on the
/// Figma primitives for the Sales App Design System.
///
/// Usage:
///   Container(
///     decoration: BoxDecoration(
///       border: Border.all(
///         width: AppBorderWidth.width10,
///       ),
///     ),
///   )
class AppBorderWidth {
  AppBorderWidth._(); // Prevent instantiation

  /// 0.5dp — Hairline border width.
  static const double width05 = 0.5;

  /// 1dp — Standard border width.
  static const double width01 = 1.0;

  /// 2dp — Thick border width.
  static const double width02 = 2.0;
}
