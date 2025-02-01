import 'package:doc_app/config/colors/app_colors.dart';
import 'package:doc_app/config/themes/font_weight.dart';
import 'package:doc_app/core/constant/app_constant.dart';
import 'package:doc_app/core/methods/get_responsive_text/responsive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(
      {super.key,
      required this.disease,
      required this.percentage,
      required this.color,
      required this.index});
  final String disease;
  final String percentage;
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: index == 3 ? AppColors.kPrimaryColor : color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                disease,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: index == 3
                          ? AppColors.kWhiteColor
                          : AppColors.kPrimaryColor,
                      fontWeight: FontWeightHelper.semiBold,
                      fontSize: getResponsiveFontSize(context, fontSize: 17),
                    ),
              ),
              Spacer(),
              Text(
                '~\$ $percentage',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: index == 3
                          ? AppColors.kWhiteColor
                          : AppColors.kPrimaryColor,
                      fontWeight: FontWeightHelper.semiBold,
                      fontSize: getResponsiveFontSize(context, fontSize: 17),
                    ),
              ),
              Text('par session',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.kGrayColor,
                        fontWeight: FontWeightHelper.regular,
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                      )),
            ],
          ),
          CircleAvatar(
            backgroundColor: index == 3
                ? AppColors.kCircleColor
                : AppColors.kGrayColor.withOpacity(0.3),
            radius: 24,
            child: Transform.rotate(
              angle: -45,
              child: Icon(
                Iconsax.arrow_right_1_outline,
                color: AppColors.kPrimaryColor,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
