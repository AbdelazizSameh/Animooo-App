import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 79,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Row(
          children: [
            const SizedBox(width: 5),
            const Icon(
              Icons.arrow_back_ios_rounded,
              fontWeight: .w500,
              color: AppColors.primary,
            ),
            Text(
              text,
              style: AppStyles.otamaep20.copyWith(
                height: 3,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
