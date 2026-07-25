import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_routes.dart';
import '../../../../../core/constants/app_styles.dart';
import 'auth_footer_widget.dart';
import 'signup_view_form.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.logo, width: 72),
            const SizedBox(height: 40),
            const Text("Sign Up", style: AppStyles.otamaep38),
            const SizedBox(height: 40),
            const SignupViewForm(),
            const SizedBox(height: 195),
            AuthFooterWidget(
              text1: "Have an account already?",
              text2: "  Log in",
              onTap: () => GoRouter.of(context).pop(AppRoutes.loginRoute),
            ),
          ],
        ),
      ),
    );
  }
}
