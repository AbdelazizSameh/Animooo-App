import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';
import 'password_requirement_tile.dart';

class PasswordValidator extends StatelessWidget {
  const PasswordValidator({super.key, required this.password});

  final String password;

  bool get hasMinLength => password.length >= 12;
  bool get hasUpperCase => RegExp(r'[A-Z]').hasMatch(password);
  bool get hasLowerCase => RegExp(r'[a-z]').hasMatch(password);
  bool get hasSpecialCharacter =>
      RegExp(r'[!@#\$%^&*(),.?":{}|<>_\-+=/\\[\]]').hasMatch(password);
  bool get hasNumber => RegExp(r'\d').hasMatch(password);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please add all necessary characters to create safe password.',
          style: AppStyles.poppins10.copyWith(color: AppColors.red),
        ),
        const SizedBox(height: 11),
        PasswordRequirementTile(
          text: 'Minimum characters 12.',
          isValid: hasMinLength,
        ),
        PasswordRequirementTile(
          text: 'One uppercase character.',
          isValid: hasUpperCase,
        ),
        PasswordRequirementTile(
          text: 'One lowercase character.',
          isValid: hasLowerCase,
        ),
        PasswordRequirementTile(
          text: 'One special character.',
          isValid: hasSpecialCharacter,
        ),
        PasswordRequirementTile(text: 'One number.', isValid: hasNumber),
      ],
    );
  }
}
