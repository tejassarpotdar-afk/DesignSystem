import 'package:flutter/material.dart';
import 'app_colors.dart';

/// A collection of semantic color tokens for the Sales App Design System.
/// These tokens map UI intent (surface, text, etc.) to primitive colors.
class AppSemanticColors {
  AppSemanticColors._(); // Prevent instantiation

  // ==========================================
  // SURFACE TOKENS
  // ==========================================

  // --- Gray ---
  static const Color surfaceGrayDefault = AppColors.white;
  static const Color surfaceGraySecondary = AppColors.neutral100;

  // --- Primary ---
  static const Color surfacePrimaryDefault = AppColors.blue1100;
  static const Color surfacePrimaryLight = AppColors.blue200;
  static const Color surfacePrimaryDark = AppColors.blue1300;

  // --- Success ---
  static const Color surfaceSuccessDefault = AppColors.green800;
  static const Color surfaceSuccessLight = AppColors.green200;
  static const Color surfaceSuccessDark = AppColors.green1200;

  // --- Warning ---
  static const Color surfaceWarningDefault = AppColors.yellow800;
  static const Color surfaceWarningLight = AppColors.yellow200;
  static const Color surfaceWarningDark = AppColors.yellow1400;

  // --- Error ---
  static const Color surfaceErrorDefault = AppColors.red400;
  static const Color surfaceErrorLight = AppColors.red100;
  static const Color surfaceErrorDark = AppColors.red500;

  // --- B&W ---
  static const Color surfaceBlack = AppColors.black;
  static const Color surfaceWhite = AppColors.white;

  // ==========================================
  // TEXT TOKENS
  // ==========================================

  // --- Gray ---
  static const Color textGrayDefault = AppColors.neutral1000;
  static const Color textGraySecondary = AppColors.neutral700;
  static const Color textGrayDisabled = AppColors.neutral400;
  static const Color textGrayInverse = AppColors.neutral100;

  // --- Primary ---
  static const Color textPrimaryDefault = AppColors.blue1100;
  static const Color textPrimaryInverse = AppColors.blue100;
  static const Color textPrimaryDisabled = AppColors.blue400;

  // --- Success ---
  static const Color textSuccessDefault = AppColors.green800;
  static const Color textSuccessInverse = AppColors.green100;
  static const Color textSuccessDisabled = AppColors.green400;

  // --- Warning ---
  static const Color textWarningDefault = AppColors.yellow1200;
  static const Color textWarningInverse = AppColors.yellow100;
  static const Color textWarningDisabled = AppColors.yellow400;

  // --- Error ---
  static const Color textErrorDefault = AppColors.red400;
  static const Color textErrorInverse = AppColors.red100;
  static const Color textErrorDisabled = AppColors.red200;

  // ==========================================
  // BORDER TOKENS
  // ==========================================

  // --- Gray ---
  static const Color borderGrayDefault = AppColors.neutral1000;
  static const Color borderGraySecondary = AppColors.neutral700;
  static const Color borderGrayDisabled = AppColors.neutral400;
  static const Color borderGrayInverse = AppColors.neutral100;

  // --- Primary ---
  static const Color borderPrimaryDefault = AppColors.blue1100;
  static const Color borderPrimaryDisabled = AppColors.blue400;

  // --- Success ---
  static const Color borderSuccessDefault = AppColors.green800;
  static const Color borderSuccessDisabled = AppColors.green400;

  // --- Warning ---
  static const Color borderWarningDefault = AppColors.yellow1200;
  static const Color borderWarningDisabled = AppColors.yellow400;

  // --- Error ---
  static const Color borderErrorDefault = AppColors.red400;
  static const Color borderErrorDisabled = AppColors.red200;

  // ==========================================
  // ICON TOKENS
  // ==========================================

  // --- Gray ---
  static const Color iconGrayDefault = AppColors.neutral1000;
  static const Color iconGraySecondary = AppColors.neutral700;
  static const Color iconGrayDisabled = AppColors.neutral400;
  static const Color iconGrayInverse = AppColors.neutral100;

  // --- Primary ---
  static const Color iconPrimaryDefault = AppColors.blue1100;
  static const Color iconPrimaryDisabled = AppColors.blue400;
  static const Color iconPrimaryInverse = AppColors.blue100;

  // --- Success ---
  static const Color iconSuccessDefault = AppColors.green800;
  static const Color iconSuccessDisabled = AppColors.green400;
  static const Color iconSuccessInverse = AppColors.green100;

  // --- Warning ---
  static const Color iconWarningDefault = AppColors.yellow1200;
  static const Color iconWarningDisabled = AppColors.yellow400;
  static const Color iconWarningInverse = AppColors.yellow100;

  // --- Error ---
  static const Color iconErrorDefault = AppColors.red400;
  static const Color iconErrorDisabled = AppColors.red200;
  static const Color iconErrorInverse = AppColors.red100;
}
