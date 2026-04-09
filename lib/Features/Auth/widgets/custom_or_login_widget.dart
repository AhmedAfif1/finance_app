import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 100.w, child: Divider()),
        WidthSpacing(12),
        Text(
          'Or Login With',
          style: AppStyles.black15BoldStyle.copyWith(color: Color(0xff6A707C)),
        ),
        WidthSpacing(12),
        SizedBox(width: 100.w, child: Divider()),
      ],
    );
  }
}
