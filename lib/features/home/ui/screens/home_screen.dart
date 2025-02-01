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
import '../widgets/doctor_card.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> doctors = [
      DoctorModel(
        name: 'Dr. John Doe',
        speciality: 'Cardiologist',
        image: Assets.imagesDoctorMan,
      ),
      DoctorModel(
        name: 'Dr. Jane Doe',
        speciality: 'Dentist',
        image: Assets.imagesDoctorWoman,
      ),
      DoctorModel(
        name: 'Dr. John Doe',
        speciality: 'Cardiologist',
        image: Assets.imagesDoctorMan,
      ),
      DoctorModel(
        name: 'Dr. Jane Doe',
        speciality: 'Dentist',
        image: Assets.imagesDoctorWoman,
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const AppBarTitle(),
            pinned: true,
            actions: [
              AppBarActionButton(icon: Iconsax.notification_outline),
              Spacing.horizontalSpace(10),
              AppBarActionButton(icon: Iconsax.message_outline),
              Spacing.horizontalSpace(10),
              ProfileAvatar(),
              Spacing.horizontalSpace(10),
            ],
            expandedHeight: 380.h,
            flexibleSpace: FlexibleSpaceBar(
              background: DoctorCarousel(doctors: doctors),
            ),
          ),
          SliverToBoxAdapter(
            child: HomeScreenBody(), // Placeholder for additional content
          ),
        ],
      ),
    );
  }
}
