import 'package:finance_app/core/Routing/app_rotes.dart';
import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pinController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpacing(12),
                BackButtonWidget(),
                HeightSpacing(28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    'OTP Verification',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                HeightSpacing(10),
                Text(
                  'Enter the verification code we just sent on your email address.',
                  style: AppStyles.subTitleStyles,
                ),
                HeightSpacing(32),
                PinCodeTextField(
                  controller: pinController,
                  appContext: context,
                  length: 4,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle: AppStyles.primaryHeadLineStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    activeColor: AppColors.mainPrimaryColor,
                    activeFillColor: Colors.white,
                    selectedColor: AppColors.mainPrimaryColor,
                    selectedFillColor: Colors.white,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: AppColors.greyColor.withOpacity(.1),
                  ),
                  onChanged: (value) {
                    print('pin value : $value');
                  },
                  onCompleted: (value) {
                    GoRouter.of(context).pushNamed(AppRotes.onBoardingScreen);
                  },
                ),
                HeightSpacing(38),
                PrimaryButtonWidget(buttenText: 'Verify', onPrese: () {}),
                Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t Recive Code',
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: AppColors.mainPrimaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Resend',
                          style: AppStyles.black15BoldStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                HeightSpacing(26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
