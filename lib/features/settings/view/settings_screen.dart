
import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_colors.dart';
import 'package:hormo_track/core/constants/app_strings.dart';
import 'profile_screen.dart';
import 'about_us_screen.dart';
import 'contact_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.black54),
                  SizedBox(width: 20),
                  Text(
                    AppStrings.settings,
                    style: TextStyle(
                      color: AppColors.primaryPink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),


              buildItem(context, Icons.person, AppStrings.myProfile, AppColors.primaryPink, ProfileScreen()),


              buildItem(context, Icons.info_outline, AppStrings.aboutUs, AppColors.primaryPink, AboutUsScreen()),


              buildItem(context, Icons.email, AppStrings.contactUs, AppColors.primaryPink, ContactScreen()),


              buildItem(context, Icons.logout_rounded, AppStrings.logout, AppColors.primaryPink, null),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, IconData icon, String title, Color color, Widget? page) {
    return ListTile(
      // Padding
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      leading: Icon(icon, color: color, size: 30),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        if (page != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        }
      },
    );
  }
}

