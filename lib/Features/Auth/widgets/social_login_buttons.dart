import 'package:finance_app/Features/Auth/widgets/custom_icon_button.dart';
import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconPath: AppAssets.facebookSvgIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.googleSvgIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.appleSvgIcon),
      ],
    );
  }
}
