import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_routes.dart';
import 'features/onboarding/view/onBoarding_screen.dart';
import 'features/onboarding/view/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes:{
        AppRoutes.splashScreen : (context)=>SplashScreen(),
        AppRoutes.onBoardingScreen : (context)=>OnboardingScreen(),

      },
    );
  }
}
