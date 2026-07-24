import 'package:animoooa_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_assets.dart';
import 'login_view_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Image.asset(AppAssets.logo, width: 72),
          const SizedBox(height: 40),
          const Text("Log In", style: AppStyles.otamaep38),
          const SizedBox(height: 40),
          const LoginViewForm(),
        ],
      ),
    );
  }
}
