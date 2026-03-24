/// A comprehensive collection of spacing design tokens based on the
/// Sales App Design System.
///
/// Usage:
///   Padding(
///     padding: EdgeInsets.all(AppSpacing.spacing16),
///   )
///
///   SizedBox(height: AppSpacing.spacing24)
class AppSpacing {
  AppSpacing._(); // Prevent instantiation

  // ==========================================
  // PRIMITIVE TOKENS
  // Values are in logical pixels (dp).
  // ==========================================

  /// 0dp — No spacing.
  static const double spacing00 = 0;

  /// 2dp — Hairline / micro spacing.
  static const double spacing02 = 2;

  /// 4dp — Extra-small spacing (base unit).
  static const double spacing04 = 4;

  /// 6dp — Small-minus spacing.
  static const double spacing06 = 6;

  /// 8dp — Small spacing (2× base unit).
  static const double spacing08 = 8;

  /// 12dp — Medium-small spacing (3× base unit).
  static const double spacing12 = 12;

  /// 16dp — Medium spacing (4× base unit).
  static const double spacing16 = 16;

  /// 20dp — Medium-large spacing (5× base unit).
  static const double spacing20 = 20;

  /// 24dp — Large spacing (6× base unit).
  static const double spacing24 = 24;

  /// 32dp — Extra-large spacing (8× base unit).
  static const double spacing32 = 32;

  /// 40dp — 2XL spacing (10× base unit).
  static const double spacing40 = 40;
}
