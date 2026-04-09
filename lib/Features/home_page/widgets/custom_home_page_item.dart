import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomePageItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String dec;
  const CustomHomePageItem({
    required this.dec,
    required this.iconData,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E9ED), width: 1.w),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffE3E9ED),
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Icon(
                iconData,
                size: 20.sp,
                color: AppColors.mainPrimaryColor,
              ),
            ),
            HeightSpacing(12),
            Text(title, style: AppStyles.black15BoldStyle),
            HeightSpacing(8),
            Text(dec, style: AppStyles.grey12w500),
          ],
        ),
      ),
    );
  }
}
