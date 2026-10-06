import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class CustomAppField extends StatelessWidget {
  const CustomAppField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.prefixIcon,
  });

  final String hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyle.fieldHint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: AppColors.fieldFill,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.border,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}