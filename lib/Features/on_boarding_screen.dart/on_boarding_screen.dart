import 'package:finance_app/core/Routing/app_rotes.dart';
import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_butten_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoard,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          HeightSpacing(21),
          PrimaryButtonWidget(
            onPrese: () {
              GoRouter.of(context).push(AppRotes.mainScreen);
            },
            buttenText: 'Login',
            width: 354.w,
            height: 56.h,
          ),
          HeightSpacing(15.h),
          PrimaryOutlinButtonWidget(
            onPrese: () {
              GoRouter.of(context).push(AppRotes.loginScreen);
            },
            buttenText: 'Register',
            width: 354.w,
            height: 56.h,
          ),
          HeightSpacing(25),
          Text(
            'Continue as a guest',
            style: AppStyles.black15BoldStyle.copyWith(
              color: Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
