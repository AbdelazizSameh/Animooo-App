import 'package:animoooa_app/features/auth/presentation/views/widgets/password_validator.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'custom_text_form_field.dart';

class CreateNewPasswordViewBody extends StatelessWidget {
  const CreateNewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Create New Password',
            style: AppStyles.otamaep20.copyWith(color: AppColors.primary),
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            label: 'New Password',
            hintText: '********',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_outlined,
                color: AppColors.grey700,
              ),
            ),
          ),
          const SizedBox(height: 9),
          const PasswordValidator(password: "11udgh"),
          const SizedBox(height: 17),
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
          const SizedBox(height: 82),
          CustomElevatedButton(text: "Submit", onPressed: () {}),
        ],
      ),
    );
  }
}
