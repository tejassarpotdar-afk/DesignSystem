import 'package:flutter/material.dart';
import '../Foundation/app_colors.dart';
import '../Foundation/app_semantic_colors.dart';
import '../Foundation/app_spacing.dart';
import '../Foundation/app_radius.dart';
import '../Foundation/app_typography.dart';
import '../Foundation/app_border_width.dart';
import '../Foundation/app_opacity.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? placeholder;
  final String? helperText;
  final String? errorText;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;

  const AppTextField({
    super.key,
    this.controller,
    this.label,
    this.placeholder,
    this.helperText,
    this.errorText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool hasError = widget.errorText != null;
    final bool isDisabled = !widget.enabled;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: AppTypography.b4Medium.copyWith(
              color: isDisabled 
                  ? AppSemanticColors.textGrayDisabled 
                  : AppSemanticColors.textGrayDefault,
            ),
          ),
          const SizedBox(height: AppSpacing.spacing06),
        ],
        GestureDetector(
          onTap: () {
            if (widget.enabled && !widget.readOnly) {
              _focusNode.requestFocus();
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.spacing12),
            constraints: const BoxConstraints(minHeight: 44),
            decoration: BoxDecoration(
              color: isDisabled 
                  ? AppSemanticColors.surfaceGraySecondary.withOpacity(AppOpacity.opacity4)
                  : AppSemanticColors.surfaceWhite,
              borderRadius: BorderRadius.circular(AppRadius.radius08),
              border: Border.all(
                color: _getBorderColor(hasError, _isFocused, isDisabled),
                width: AppBorderWidth.width01,
              ),
            ),
            child: Row(
              children: [
                if (widget.leadingIcon != null) ...[
                  IconTheme(
                    data: IconThemeData(
                      color: _getIconColor(hasError, _isFocused, isDisabled),
                      size: 20,
                    ),
                    child: widget.leadingIcon!,
                  ),
                  const SizedBox(width: AppSpacing.spacing08),
                ],
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    focusNode: _focusNode,
                    obscureText: widget.obscureText,
                    enabled: widget.enabled,
                    readOnly: widget.readOnly,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    onChanged: widget.onChanged,
                    onEditingComplete: widget.onEditingComplete,
                    onSubmitted: widget.onSubmitted,
                    cursorColor: AppSemanticColors.borderPrimaryDefault,
                    style: AppTypography.b4Regular.copyWith(
                      color: isDisabled 
                          ? AppSemanticColors.textGrayDisabled 
                          : AppSemanticColors.textGrayDefault,
                    ),
                    decoration: InputDecoration(
                      hintText: widget.placeholder,
                      hintStyle: AppTypography.b4Regular.copyWith(
                        color: AppSemanticColors.textGrayDisabled,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                if (widget.trailingIcon != null) ...[
                  const SizedBox(width: AppSpacing.spacing08),
                  DefaultTextStyle(
                    style: AppTypography.b4Semibold.copyWith(
                      color: AppSemanticColors.textPrimaryDefault,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        color: _getIconColor(hasError, _isFocused, isDisabled),
                        size: 20,
                      ),
                      child: widget.trailingIcon!,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        if (hasError || widget.helperText != null) ...[
          const SizedBox(height: AppSpacing.spacing04),
          Text(
            hasError ? widget.errorText! : widget.helperText!,
            style: AppTypography.b5Regular.copyWith(
              color: hasError 
                  ? AppSemanticColors.textErrorDefault 
                  : AppSemanticColors.textGraySecondary,
            ),
          ),
        ],
      ],
    );
  }

  Color _getBorderColor(bool hasError, bool isFocused, bool isDisabled) {
    if (isDisabled) return AppSemanticColors.borderGrayDisabled;
    if (hasError) return AppSemanticColors.borderErrorDefault;
    if (isFocused) return AppSemanticColors.borderGraySecondary;
    return AppSemanticColors.borderGrayDisabled;
  }

  Color _getIconColor(bool hasError, bool isFocused, bool isDisabled) {
    if (isDisabled) return AppSemanticColors.iconGrayDisabled;
    if (hasError) return AppSemanticColors.iconErrorDefault;
    if (isFocused) return AppSemanticColors.iconPrimaryDefault;
    return AppSemanticColors.iconGraySecondary;
  }
}
