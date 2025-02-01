import 'package:doc_app/config/colors/app_colors.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppBarActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const AppBarActionButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.kWhiteColor,
      child: IconButton(
        icon: Icon(icon, color: AppColors.kBlackColor),
        onPressed: onPressed,
      ),
    );
  }
}

// Custom widget for the profile avatar
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundImage: AssetImage(Assets.imagesMan),
    );
  }
}
