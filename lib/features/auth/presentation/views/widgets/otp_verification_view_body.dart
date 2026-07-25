import 'package:animoooa_app/core/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'custom_pinput_widget.dart';

class OtpVerificationViewBody extends StatelessWidget {
  const OtpVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'OTP Verfication',
            style: AppStyles.otamaep20.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 6),
          Text(
            'Please enter the 4 digit code sent your phone number',
            style: AppStyles.poppins14.copyWith(color: AppColors.grey600),
          ),
          const SizedBox(height: 54),
          const CustomPinPutWidget(),
          const SizedBox(height: 41),
          CustomElevatedButton(
            text: "Confirm",
            onPressed: () =>
                GoRouter.of(context).push(AppRoutes.createNewPasswordRoute),
          ),
          const SizedBox(height: 6),
          Align(
            alignment: Alignment.center,
            child: Text('Resend Code In 00:59', style: AppStyles.inter12),
          ),
        ],
      ),
    );
  }
}
