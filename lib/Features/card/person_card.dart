import 'package:finance_app/Features/home_page/widgets/carousel_widget.dart';
import 'package:finance_app/Features/home_page/widgets/top_profile.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpacing(18),
          TopProfile(),

          Padding(
            padding: const EdgeInsets.only(top: 220, bottom: 150),
            child: CarouselWidget(),
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
