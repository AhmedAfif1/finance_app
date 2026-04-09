import 'package:finance_app/Features/Auth/login_screen.dart';
import 'package:finance_app/Features/main_screen/main_screen.dart';
import 'package:finance_app/Features/on_boarding_screen.dart/on_boarding_screen.dart';
import 'package:finance_app/Features/verify_otp/verify_otp_screen.dart';
import 'package:finance_app/core/Routing/app_rotes.dart';
import 'package:go_router/go_router.dart';

class RouterGenrationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRotes.onBoardingScreen,
    routes: [
      GoRoute(
        name: AppRotes.onBoardingScreen,
        path: AppRotes.onBoardingScreen,
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        name: AppRotes.loginScreen,
        path: AppRotes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: AppRotes.verifyLoginScreen,
        path: AppRotes.verifyLoginScreen,
        builder: (context, state) => VerifyOtpScreen(),
      ), GoRoute(
        name: AppRotes.mainScreen,
        path: AppRotes.mainScreen,
        builder: (context, state) => MainScreen(),
      ),
    ],
  );
}
