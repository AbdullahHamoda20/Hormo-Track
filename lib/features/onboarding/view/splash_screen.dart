import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_assets.dart';
import 'package:hormo_track/core/constants/app_colors.dart';

import 'onBoarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed( const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (a)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          gradient:  AppColors.splashGradient
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(AppAssets.splashImage,alignment: Alignment.center,)
            ],
          ),
        ),
      ),
    );
  }
}
