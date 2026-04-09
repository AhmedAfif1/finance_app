import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.prfileImage,
                width: 48.w,
                height: 48.h,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpacing(11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: AppStyles.grey12w500.copyWith(
                    color: Color(0xff6A707C),
                  ),
                ),
                HeightSpacing(2),
                Text('Asr yousry', style: AppStyles.black18BoldStyle),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1.w, color: Color(0xffE3E9ED)),
          ),
          child: Icon(
            Icons.notifications,
            size: 24.sp,
            color: AppColors.mainPrimaryColor,
          ),
        ),
      ],
    );
  }
}
