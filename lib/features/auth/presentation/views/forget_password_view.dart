import 'package:animoooa_app/features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';
import 'widgets/auth_app_bar.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(text: "Back"),
      body: const SafeArea(child: ForgetPasswordViewBody()),
    );
  }
}
