import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/colors/app_colors.dart';
import '../constant/app_constant.dart';
import '../helpers/spacing.dart';
import '../methods/get_responsive_text/responsive_text.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    this.isHasnMuslim,
  });

  final String title;
  final String image;
  final String description;
  final bool? isHasnMuslim;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: AppColors.kWhiteColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      expandedHeight: isHasnMuslim == true ? 200.h : 250.h,
      backgroundColor: AppColors.kPrimaryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              left: 10.w,
              right: 10.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kWhiteColor,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 20),
                          ),
                    ),
                    SvgPicture.asset(
                      image,
                      width: 50.w,
                      height: 50.h,
                    )
                  ],
                ),
                Spacing.verticalSpace(10),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                        height: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: Container(
          height: 25, // adjust the height if needed
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
