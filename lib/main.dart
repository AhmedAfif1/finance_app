import 'package:finance_app/Features/on_boarding_screen.dart/on_boarding_screen.dart';
import 'package:finance_app/core/Routing/app_rotes.dart';
import 'package:finance_app/core/Routing/router_genration_config.dart';
import 'package:finance_app/core/Styling/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeDataStyle.lightTheme,
          routerConfig: RouterGenrationConfig.goRouter,
        );
      },
    );
  }
}
