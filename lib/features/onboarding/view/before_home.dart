import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_assets.dart';
import 'package:hormo_track/core/constants/app_colors.dart';
import 'package:hormo_track/core/constants/app_strings.dart';
import 'package:hormo_track/features/home/view/home_screen.dart';
class BeforeHomeScreen extends StatefulWidget {
  const BeforeHomeScreen({super.key});

  @override
  State<BeforeHomeScreen> createState() => _BeforeHomeScreenState();
}

class _BeforeHomeScreenState extends State<BeforeHomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _animation = Tween<double>(begin: 0.9, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true);

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              /// Title
            const Text(
                AppStrings.beforeHomeTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.header,
                ),
              ),

              const SizedBox(height: 45),

              /// Description
             const Text(
                AppStrings.beforeHomeDesc,
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize: 14,
                  height: 1.7,
                  color: AppColors.description,
                ),
              ),

              const SizedBox(height: 30),

              /// Animated logo
              ScaleTransition(
                scale: _animation,
                child: Image.asset(
                  AppAssets.beforeGoToHome,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}