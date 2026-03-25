import 'package:flutter/material.dart';
import '../Foundation/app_colors.dart';
import '../Foundation/app_semantic_colors.dart';
import '../Foundation/app_spacing.dart';
import '../Foundation/app_radius.dart';
import '../Foundation/app_typography.dart';
import '../Foundation/app_border_width.dart';
import '../Foundation/app_opacity.dart';

enum AppButtonVariant {
  primary,
  secondary,
  neutral,
  destructive,
  link,
}

enum AppButtonSize {
  large,
  medium,
  small,
}

class AppButton extends StatefulWidget {
  final String? label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;

  const AppButton({
    super.key,
    this.label,
    this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.large,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = widget.onPressed == null || widget.isLoading;
    final bool isIconOnly = widget.label == null || widget.label!.isEmpty;

    return Semantics(
      button: true,
      enabled: !isDisabled,
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) => setState(() => _isPressed = false),
        onTapCancel: () => setState(() => _isPressed = false),
        onTap: isDisabled ? null : widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: _getHeight(),
          width: isIconOnly ? _getHeight() : null,
          padding: _getPadding(isIconOnly),
          decoration: BoxDecoration(
            color: _getBackgroundColor(isDisabled, _isPressed),
            border: _getBorder(isDisabled, _isPressed),
            borderRadius: BorderRadius.circular(AppRadius.radius08),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.isLoading)
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: _getTextColor(isDisabled),
                    ),
                  )
                else ...[
                  if (widget.leadingIcon != null)
                    IconTheme(
                      data: IconThemeData(
                        size: _getIconSize(),
                        color: _getTextColor(isDisabled),
                      ),
                      child: widget.leadingIcon!,
                    ),
                  if (!isIconOnly) ...[
                    if (widget.leadingIcon != null)
                      const SizedBox(width: AppSpacing.spacing08),
                    Text(
                      widget.label!,
                      style: _getTextStyle(isDisabled).copyWith(
                        color: _getTextColor(isDisabled),
                        decoration: widget.variant == AppButtonVariant.link 
                            ? TextDecoration.underline 
                            : null,
                      ),
                    ),
                    if (widget.trailingIcon != null)
                      const SizedBox(width: AppSpacing.spacing08),
                  ],
                  if (widget.trailingIcon != null && !isIconOnly)
                    IconTheme(
                      data: IconThemeData(
                        size: _getIconSize(),
                        color: _getTextColor(isDisabled),
                      ),
                      child: widget.trailingIcon!,
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _getHeight() {
    switch (widget.size) {
      case AppButtonSize.large:
        return 48.0;
      case AppButtonSize.medium:
        return 40.0;
      case AppButtonSize.small:
        return 32.0;
    }
  }

  EdgeInsets _getPadding(bool isIconOnly) {
    if (isIconOnly) return EdgeInsets.zero;

    switch (widget.size) {
      case AppButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: AppSpacing.spacing24);
      case AppButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: AppSpacing.spacing16);
      case AppButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: AppSpacing.spacing12);
    }
  }

  Color _getBackgroundColor(bool isDisabled, bool isPressed) {
    if (isDisabled) {
      if (widget.variant == AppButtonVariant.primary) {
        return AppSemanticColors.surfacePrimaryLight.withOpacity(AppOpacity.opacity4);
      }
      return Colors.transparent;
    }

    if (isPressed) {
      switch (widget.variant) {
        case AppButtonVariant.primary:
          return AppSemanticColors.surfacePrimaryDark;
        case AppButtonVariant.secondary:
        case AppButtonVariant.link:
          return AppSemanticColors.surfacePrimaryLight.withOpacity(AppOpacity.opacity4);
        case AppButtonVariant.neutral:
          return AppSemanticColors.surfaceGraySecondary;
        case AppButtonVariant.destructive:
          return AppSemanticColors.surfaceErrorLight.withOpacity(AppOpacity.opacity4);
      }
    }

    switch (widget.variant) {
      case AppButtonVariant.primary:
        return AppSemanticColors.surfacePrimaryDefault;
      case AppButtonVariant.destructive:
        return AppSemanticColors.surfaceErrorLight;
      default:
        return Colors.transparent;
    }
  }

  Border? _getBorder(bool isDisabled, bool isPressed) {
    if (widget.variant == AppButtonVariant.primary || 
        widget.variant == AppButtonVariant.destructive || 
        widget.variant == AppButtonVariant.link) {
      return null;
    }

    final Color borderColor;
    if (isDisabled) {
      borderColor = AppSemanticColors.borderGrayDisabled;
    } else {
      switch (widget.variant) {
        case AppButtonVariant.secondary:
          borderColor = AppSemanticColors.borderPrimaryDefault;
          break;
        case AppButtonVariant.neutral:
          borderColor = AppSemanticColors.borderGraySecondary;
          break;
        default:
          return null;
      }
    }

    return Border.all(
      color: borderColor,
      width: AppBorderWidth.width01,
    );
  }

  Color _getTextColor(bool isDisabled) {
    if (isDisabled) {
      return AppSemanticColors.textGrayDisabled;
    }

    switch (widget.variant) {
      case AppButtonVariant.primary:
        return AppSemanticColors.surfaceWhite;
      case AppButtonVariant.secondary:
      case AppButtonVariant.link:
        return AppSemanticColors.textPrimaryDefault;
      case AppButtonVariant.neutral:
        return AppSemanticColors.textGrayDefault;
      case AppButtonVariant.destructive:
        return AppSemanticColors.textErrorDefault;
    }
  }

  TextStyle _getTextStyle(bool isDisabled) {
    switch (widget.size) {
      case AppButtonSize.large:
        return AppTypography.b3Semibold;
      case AppButtonSize.medium:
        return AppTypography.b4Semibold;
      case AppButtonSize.small:
        return AppTypography.b5Semibold;
    }
  }

  double _getIconSize() {
    switch (widget.size) {
      case AppButtonSize.large:
        return 20.0;
      case AppButtonSize.medium:
        return 18.0;
      case AppButtonSize.small:
        return 16.0;
    }
  }
}
