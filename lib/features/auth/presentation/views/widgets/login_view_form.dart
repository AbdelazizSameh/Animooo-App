import 'package:animoooa_app/core/constants/app_colors.dart';
import 'package:animoooa_app/core/constants/app_routes.dart';
import 'package:animoooa_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'custom_text_form_field.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            label: 'Email',
            hintText: 'Enter your email address',
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            label: 'Password',
            hintText: '********',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_outlined,
                color: AppColors.grey700,
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerEnd,
            child: TextButton(
              onPressed: () =>
                  GoRouter.of(context).push(AppRoutes.forgetPasswordRoute),
              child: Text(
                'Forget Password....?',
                style: AppStyles.poppins12.copyWith(
                  color: AppColors.primary,
                  decoration: .underline,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          CustomElevatedButton(text: 'Log In', onPressed: () {}),
        ],
      ),
    );
  }
}
