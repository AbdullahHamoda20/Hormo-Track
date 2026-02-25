import 'package:flutter/material.dart';

import 'profile_screen.dart';
import 'about_us_screen.dart';
import 'contact_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryPink = Color(0xFFE96677);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.black54),
                  SizedBox(width: 20),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: primaryPink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              
              
              buildItem(context, Icons.person, "Your Profile", primaryPink, ProfileScreen()),
              
              
              buildItem(context, Icons.info_outline, "About Us", primaryPink, AboutUsScreen()),
              
              
              buildItem(context, Icons.email, "Contact Us", primaryPink, ContactScreen()),
              
              
              buildItem(context, Icons.logout_rounded, "LOGOUT", primaryPink, null),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, IconData icon, String title, Color color, Widget? page) {
    return ListTile(
      // Padding 
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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