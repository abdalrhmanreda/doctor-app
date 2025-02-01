import 'package:doc_app/config/colors/app_colors.dart';
import 'package:doc_app/config/themes/font_weight.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/methods/get_responsive_text/responsive_text.dart';
import 'package:doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_app/features/home/data/models/home_container_model.dart';
import 'package:doc_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../widgets/app_bar_action_button.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/doctor_card.dart';
import 'home_container.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<HomeContainerModel> diseases = [
      HomeContainerModel(
        disease: 'General visit',
        percentage: '89',
        color: AppColors.kTransparent.withOpacity(0.5),
      ),
      HomeContainerModel(
        disease: 'specialist visit',
        percentage: '289',
        color: AppColors.kTransparent.withOpacity(0.5),
      ),
      HomeContainerModel(
        disease: 'Medical Test',
        percentage: '179',
        color: AppColors.kTransparent.withOpacity(0.5),
      ),
      HomeContainerModel(
        disease: 'Therapeutic',
        percentage: '55',
        color: AppColors.kTransparent.withOpacity(0.5),
      ),
    ];
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 100.w,
            height: 3.h,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Spacing.verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Let\'s find\n',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeightHelper.regular,
                        fontSize: getResponsiveFontSize(context, fontSize: 20),
                      ),
                  children: [
                    TextSpan(
                      text: 'your doctor',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kPrimaryColor,
                            fontWeight: FontWeightHelper.semiBold,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 22),
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: AppColors.kGrayColor.withOpacity(0.2),
                child: Icon(
                  Iconsax.search_normal_outline,
                  color: AppColors.kPrimaryColor,
                  size: 20,
                ),
              ),
              Spacing.horizontalSpace(10),
              CircleAvatar(
                backgroundColor: AppColors.kGrayColor.withOpacity(0.2),
                child: Icon(
                  Iconsax.filter_outline,
                  color: AppColors.kPrimaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
          Spacing.verticalSpace(20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
            ),
            itemCount: diseases.length,
            itemBuilder: (context, index) {
              return HomeContainer(
                disease: diseases[index].disease,
                percentage: diseases[index].percentage,
                color: diseases[index].color,
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
