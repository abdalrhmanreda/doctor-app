import 'package:doc_app/config/colors/app_colors.dart';
import 'package:doc_app/config/themes/font_weight.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/methods/get_responsive_text/responsive_text.dart';
import 'package:doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../widgets/app_bar_action_button.dart';
import '../widgets/app_bar_title.dart';

class DoctorCarousel extends StatelessWidget {
  final List<DoctorModel> doctors;

  const DoctorCarousel({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: doctors
            .map(
              (doctor) => Padding(
                padding: EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w),
                child: DoctorCard(doctor: doctor),
              ),
            )
            .toList(),
      ),
    );
  }
}

// Custom widget for the doctor card
class DoctorCard extends StatelessWidget {
  final DoctorModel doctor;

  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            doctor.image,
            width: 300.w,
            height: 300.h,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          width: 295.w,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: AppColors.kWhiteColor.withOpacity(0.4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kBlackColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 20),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      doctor.speciality,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.kPrimaryColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 15),
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                    ),
                    Spacing.verticalSpace(5),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.kWhiteColor,
                          radius: 15,
                          child: Icon(
                            Iconsax.heart_circle_outline,
                            color: AppColors.kPrimaryColor,
                            size: 15,
                          ),
                        ),
                        Spacing.horizontalSpace(5),
                        CircleAvatar(
                          backgroundColor: AppColors.kWhiteColor,
                          radius: 15,
                          child: Icon(
                            Iconsax.hierarchy_outline,
                            color: AppColors.kPrimaryColor,
                            size: 15,
                          ),
                        ),
                        Spacing.horizontalSpace(5),
                        CircleAvatar(
                          backgroundColor: AppColors.kWhiteColor,
                          radius: 15,
                          child: Icon(
                            Iconsax.call_outline,
                            color: AppColors.kPrimaryColor,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: AppColors.kPrimaryColor,
                  radius: 26,
                  child: Transform.rotate(
                    angle: -45,
                    child: const Icon(
                      Iconsax.arrow_right_1_outline,
                      color: AppColors.kWhiteColor,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
