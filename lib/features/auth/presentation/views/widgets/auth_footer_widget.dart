import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class AuthFooterWidget extends StatelessWidget {
  const AuthFooterWidget({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppStyles.poppins14.copyWith(color: AppColors.grey600),
        ),
        GestureDetector(
          onTap: () {
            // context.push(AppRoutes.signupPath);
          },
          child: Text(
            text2,
            style: AppStyles.poppins14.copyWith(
              fontWeight: .w600,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
