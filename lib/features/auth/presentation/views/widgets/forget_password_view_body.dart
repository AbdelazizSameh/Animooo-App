import 'package:animoooa_app/core/constants/app_colors.dart';
import 'package:animoooa_app/core/constants/app_routes.dart';
import 'package:animoooa_app/core/constants/app_styles.dart';
import 'package:animoooa_app/core/widgets/custom_elevated_button.dart';
import 'package:animoooa_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Forget Your Password ?',
            style: AppStyles.otamaep20.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 6),
          Text(
            'Please enter the email address associated with your account, and we\'ll send you OTP to reset your password.',
            style: AppStyles.poppins14.copyWith(color: AppColors.grey600),
          ),
          const SizedBox(height: 58),
          CustomTextFormField(
            label: 'Email',
            hintText: 'Enter your email address',
          ),
          const SizedBox(height: 151),
          CustomElevatedButton(
            text: "Send Code",
            onPressed: () =>
                GoRouter.of(context).push(AppRoutes.otpVerificationRoute),
          ),
        ],
      ),
    );
  }
}
