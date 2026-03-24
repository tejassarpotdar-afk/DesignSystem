import 'package:flutter/material.dart';

/// A comprehensive collection of typography design tokens based on the 
/// Figma primitives for the Sales App Design System.
class AppTypography {
  AppTypography._(); // Prevent instantiation

  /// The primary font family used throughout the application.
  static const String fontFamily = 'Figtree';

  // ==========================================
  // HEADING TOKENS (H1 - H4)
  // Weights: Regular (400), Semibold (600), Bold (700)
  // ==========================================

  // --- H1: Size 40, Line Height 48 (1.2) ---
  static const TextStyle h1Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w400,
    height: 48 / 40,
    letterSpacing: 0,
  );

  static const TextStyle h1Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w600,
    height: 48 / 40,
    letterSpacing: 0,
  );

  static const TextStyle h1Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w700,
    height: 48 / 40,
    letterSpacing: 0,
  );

  // --- H2: Size 32, Line Height 38 (1.1875) ---
  static const TextStyle h2Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 38 / 32,
    letterSpacing: 0,
  );

  static const TextStyle h2Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 38 / 32,
    letterSpacing: 0,
  );

  static const TextStyle h2Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 38 / 32,
    letterSpacing: 0,
  );

  // --- H3: Size 24, Line Height 34 (1.416) ---
  static const TextStyle h3Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 34 / 24,
    letterSpacing: 0,
  );

  static const TextStyle h3Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 34 / 24,
    letterSpacing: 0,
  );

  static const TextStyle h3Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 34 / 24,
    letterSpacing: 0,
  );

  // --- H4: Size 20, Line Height 28 (1.4) ---
  static const TextStyle h4Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 28 / 20,
    letterSpacing: 0,
  );

  static const TextStyle h4Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
    letterSpacing: 0,
  );

  static const TextStyle h4Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 28 / 20,
    letterSpacing: 0,
  );

  // ==========================================
  // BODY TOKENS (B1 - B5)
  // Weights: Regular (400), Medium (500), Semibold (600)
  // ==========================================

  // --- B1: Size 20, Line Height 28 (1.4) ---
  static const TextStyle b1Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 28 / 20,
    letterSpacing: 0,
  );

  static const TextStyle b1Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 28 / 20,
    letterSpacing: 0,
  );

  static const TextStyle b1Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
    letterSpacing: 0,
  );

  // --- B2: Size 18, Line Height 25 (1.388) ---
  static const TextStyle b2Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 25 / 18,
    letterSpacing: 0,
  );

  static const TextStyle b2Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 25 / 18,
    letterSpacing: 0,
  );

  static const TextStyle b2Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 25 / 18,
    letterSpacing: 0,
  );

  // --- B3: Size 16, Line Height 22 (1.375) ---
  static const TextStyle b3Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 22 / 16,
    letterSpacing: 0,
  );

  static const TextStyle b3Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 22 / 16,
    letterSpacing: 0,
  );

  static const TextStyle b3Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 22 / 16,
    letterSpacing: 0,
  );

  // --- B4: Size 14, Line Height 20 (1.428) ---
  static const TextStyle b4Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    letterSpacing: 0,
  );

  static const TextStyle b4Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
    letterSpacing: 0,
  );

  static const TextStyle b4Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    letterSpacing: 0,
  );

  // --- B5: Size 12, Line Height 16 (1.333) ---
  static const TextStyle b5Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    letterSpacing: 0,
  );

  static const TextStyle b5Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
    letterSpacing: 0,
  );

  static const TextStyle b5Semibold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    letterSpacing: 0,
  );
}
