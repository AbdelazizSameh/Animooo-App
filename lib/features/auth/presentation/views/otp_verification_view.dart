import 'package:animoooa_app/features/auth/presentation/views/widgets/otp_verification_view_body.dart';
import 'package:flutter/material.dart';
import 'widgets/auth_app_bar.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(text: "Cancel"),
      body: const SafeArea(child: OtpVerificationViewBody()),
    );
  }
}
