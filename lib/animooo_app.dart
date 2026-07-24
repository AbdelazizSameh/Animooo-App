import 'package:animoooa_app/core/constants/font_family.dart';
import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'core/utils/app_router.dart';

class AnimoooApp extends StatelessWidget {
  const AnimoooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Animooo App',
      theme: ThemeData(
        fontFamily: FontFamily.poppins,
        scaffoldBackgroundColor: AppColors.white,
      ),
      routerConfig: AppRouter.routerConfig,
    );
  }
}
