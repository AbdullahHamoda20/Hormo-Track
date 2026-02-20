import 'package:flutter/material.dart';
// 
import 'features/settings/view/about_us_screen.dart';
import 'features/settings/view/profile_screen.dart';
import 'features/settings/view/contact_screen.dart';
import 'features/settings/view/settings_screen.dart';
import 'features/tips/view/tips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 
      home:  TipsScreen(),
        
    );
  }
}