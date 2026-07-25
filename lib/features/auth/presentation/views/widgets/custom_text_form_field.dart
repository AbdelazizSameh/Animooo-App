import 'package:animoooa_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import 'text_field_label.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.suffixIcon,
  });
  final String label;
  final String hintText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        TextFieldLabel(label: label),
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintStyle: AppStyles.poppins12,
            suffixIcon: suffixIcon,
            hintText: hintText,
            filled: true,
            fillColor: AppColors.white100,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 13,
            ),
            enabledBorder: outlineInputBorder(color: AppColors.grey100),
            focusedBorder: outlineInputBorder(color: AppColors.primary),
            errorBorder: outlineInputBorder(color: AppColors.red),
            focusedErrorBorder: outlineInputBorder(color: AppColors.red),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
