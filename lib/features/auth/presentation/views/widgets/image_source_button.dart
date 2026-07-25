import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class ImageSourceButton extends StatelessWidget {
  const ImageSourceButton({
    super.key,
    required this.text,
    required this.borderRadius,
    this.onPressed,
  });
  final String text;
  final BorderRadiusGeometry borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        minimumSize: Size(double.maxFinite, 61),
        side: BorderSide(color: AppColors.white),
        backgroundColor: AppColors.grey100,
        foregroundColor: AppColors.primary,
      ),
      child: Text(text, style: AppStyles.otamaep18),
    );
  }
}
