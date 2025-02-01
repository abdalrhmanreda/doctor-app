import 'package:doc_app/config/colors/app_colors.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'C',
            style: _textStyle(AppColors.kCColor),
          ),
          TextSpan(
            text: 'liniQ',
            style: _textStyle(AppColors.kDarkBlue),
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle(Color color) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
