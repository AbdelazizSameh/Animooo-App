import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'custom_text_form_field.dart';
import 'image_picker_widget.dart';
import 'password_validator.dart';

class SignupViewForm extends StatelessWidget {
  const SignupViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            label: 'First Name',
            hintText: 'Enter your First Name',
          ),
          const SizedBox(height: 16),
          const CustomTextFormField(
            label: 'Last Name',
            hintText: 'Enter your Last Name',
          ),
          const SizedBox(height: 16),
          const CustomTextFormField(
            label: 'Email',
            hintText: 'Enter your email address',
          ),
          const SizedBox(height: 16),
          const CustomTextFormField(
            label: 'Phone',
            hintText: 'Enter your Phone',
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
          const SizedBox(height: 8),
          const PasswordValidator(password: "MND8@12"),
          const SizedBox(height: 16),
          CustomTextFormField(
            label: 'Confirm Password',
            hintText: '********',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_outlined,
                color: AppColors.grey700,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const ImagePickWidget(),
          const SizedBox(height: 16),
          CustomElevatedButton(text: 'Sign Up', onPressed: () {}),
        ],
      ),
    );
  }
}
