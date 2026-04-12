import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_colors.dart';
import 'package:hormo_track/core/widgets/custom_app_bar.dart';

import '../../../core/constants/app_strings.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black54),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    AppStrings.aboutUs,
                    style: TextStyle(
                      color: AppColors.primaryPink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const Spacer(flex: 1),
              const Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    AppStrings.aboutUsDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              //
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}