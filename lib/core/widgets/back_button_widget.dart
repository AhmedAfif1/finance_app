import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 21.w,
        height: 21.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(width: 1.w, color: Color(0xffE8ECF4)),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.mainPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
