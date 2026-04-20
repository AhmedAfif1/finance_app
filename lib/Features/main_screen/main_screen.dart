import 'package:finance_app/Features/card/person_card.dart';
import 'package:finance_app/Features/home_page/home_page.dart';
import 'package:finance_app/Features/add_cards/add_page.dart';
import 'package:finance_app/Features/person_card/person.dart';
import 'package:finance_app/Features/statstics/statistics_screen.dart';
import 'package:finance_app/core/Styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndix = 0;
  List<Widget> screens = [
    HomePageScreen(),
    StatisticsScreen(),
    AddPage(),
    PersonCard(),
    PersonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndix],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 1,
          selectedItemColor: AppColors.mainPrimaryColor,
          currentIndex: currentIndix,
          onTap: (value) {
            setState(() {
              currentIndix = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.sp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_history, size: 30.sp),
              label: 'manage_history',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.sp,
                height: 48.sp,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.mainPrimaryColor,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.add, color: Colors.white, size: 30.sp),
              ),
              label: 'Add',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard, size: 30.sp),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30.sp),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
