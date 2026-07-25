import 'package:animoooa_app/features/auth/presentation/views/widgets/auth_app_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/create_new_password_view_body.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(text: "Cancel"),
      body: const SafeArea(child: CreateNewPasswordViewBody()),
    );
  }
}
