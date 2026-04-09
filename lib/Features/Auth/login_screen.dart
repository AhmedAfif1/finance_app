import 'package:finance_app/core/Routing/app_rotes.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/Features/Auth/widgets/custom_icon_button.dart';
import 'package:finance_app/Features/Auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/Features/Auth/widgets/social_login_buttons.dart';
import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_filed.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpacing(12),
                  BackButtonWidget(),
                  HeightSpacing(28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'Welcome back! Again!',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  HeightSpacing(32),
                  CustomTextFiled(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your EMail';
                      }
                      return null;
                    },
                    controller: emailController,
                    hintText: 'Enter Your Email',
                  ),
                  HeightSpacing(15),
                  CustomTextFiled(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Password';
                      }
                      if (value.length > 8) {
                        return 'Password must be at leaset 8 cherates';
                      }

                      return null;
                    },
                    controller: passwordController,
                    hintText: 'Enter Your Password',
                    suffix: Icon(
                      Icons.remove_red_eye,
                      size: 20.sp,
                      color: AppColors.greyColor,
                    ),
                  ),
                  HeightSpacing(13),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password',
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: Color(0xff6A707C),
                      ),
                    ),
                  ),
                  HeightSpacing(30),
                  PrimaryButtonWidget(
                    buttenText: 'Login',
                    onPrese: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRotes.verifyLoginScreen);
                      }
                    },
                  ),
                  HeightSpacing(35),
                  CustomOrLoginWidget(),
                  HeightSpacing(22),
                  SocialLoginButtons(),
                  HeightSpacing(155),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account?',
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppColors.mainPrimaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'TextSpan',
                            style: AppStyles.black15BoldStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
