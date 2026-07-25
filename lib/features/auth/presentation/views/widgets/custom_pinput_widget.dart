import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../../core/constants/app_colors.dart';

class CustomPinPutWidget extends StatelessWidget {
  const CustomPinPutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 54,
      height: 53,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.grey300.withAlpha(90)),
        borderRadius: BorderRadius.circular(12),
      ),
    );
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      length: 5,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: const Color(0xFF0A4A43), width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      submittedPinTheme: defaultPinTheme.copyDecorationWith(
        color: AppColors.white100,
        border: Border.all(color: AppColors.primary),
      ),
      onCompleted: (pin) {},
    );
  }
}
