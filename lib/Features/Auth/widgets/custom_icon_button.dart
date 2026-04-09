import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final String iconPath;
  const CustomIconButton({required this.iconPath, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(width: 1.w, color: Color(0xffE8ECF4)),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            width: 12.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}
