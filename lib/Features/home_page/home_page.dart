import 'package:finance_app/Features/home_page/widgets/carousel_widget.dart';
import 'package:finance_app/Features/home_page/widgets/custom_home_page_item.dart';
import 'package:finance_app/Features/home_page/widgets/top_profile.dart';
import 'package:finance_app/core/Styling/app_assets.dart';
import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:finance_app/core/Styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpacing(18),
          TopProfile(),
          HeightSpacing(18),
          CarouselWidget(),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomePageItem(
                  title: 'Send Money',
                  dec: 'Take acc to acc',
                  iconData: Icons.send,
                ),
                CustomHomePageItem(
                  title: 'Pay the bill',
                  dec: 'Lorem ipsum',
                  iconData: Icons.payment,
                ),
                CustomHomePageItem(
                  title: 'Request',
                  dec: 'Lorem ipsum',
                  iconData: Icons.send,
                ),
                CustomHomePageItem(
                  title: 'Contact',
                  dec: 'Lorem ipsum',
                  iconData: Icons.quick_contacts_mail_sharp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
