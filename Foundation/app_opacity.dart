/// A comprehensive collection of opacity design tokens based on the
/// Figma Global Primitives for the Sales App Design System.
///
/// Values are expressed as [double] in the range [0.0, 1.0], converted
/// from the Figma percentage values (0 – 100).
///
/// Usage:
///   Opacity(
///     opacity: AppOpacity.opacity6,  // 48%
///     child: ...,
///   )
///
///   widget.withOpacity(AppOpacity.opacity4)  // 24%
///
///   Color(0xFF186BCC).withOpacity(AppOpacity.opacity8)  // 64%
class AppOpacity {
  AppOpacity._(); // Prevent instantiation

  // ==========================================
  // PRIMITIVE TOKENS
  // Named to match Figma variable names (prefixed with 'opacity').
  // Figma values are percentages — converted to 0.0–1.0 doubles.
  // ==========================================

  /// 0% — Fully transparent. Invisible.
  static const double opacity0 = 0.00;

  /// 9% — Near-invisible. Used for very subtle overlays.
  static const double opacity1 = 0.09;

  /// 12% — Hairline opacity. Barely-there tints.
  static const double opacity2 = 0.12;

  /// 18% — Extra-light overlay (e.g. pressed state tint).
  static const double opacity3 = 0.18;

  /// 24% — Light overlay (e.g. disabled state, ghost elements).
  static const double opacity4 = 0.24;

  /// 32% — Low opacity (e.g. placeholder text, skeleton loading).
  static const double opacity5 = 0.32;

  /// 48% — Medium opacity (e.g. scrim, image overlay).
  static const double opacity6 = 0.48;

  /// 56% — Medium-high opacity (e.g. modal backdrop, tooltip bg).
  static const double opacity7 = 0.56;

  /// 64% — High opacity (e.g. bottom sheet scrim).
  static const double opacity8 = 0.64;

  /// 72% — Very high opacity (e.g. frosted overlay, dialog scrim).
  static const double opacity9 = 0.72;

  /// 80% — Near-opaque (e.g. dark overlay on media content).
  static const double opacity10 = 0.80;

  /// 88% — Almost fully opaque (e.g. nav bar background tint).
  static const double opacity11 = 0.88;

  /// 100% — Fully opaque. No transparency.
  static const double opacity12 = 1.00;
}
