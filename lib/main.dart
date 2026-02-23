import 'package:flutter/material.dart';

import 'features/settings/view/about_us_screen.dart';
import 'features/settings/view/profile_screen.dart';
import 'features/settings/view/contact_screen.dart';
import 'features/settings/view/settings_screen.dart';
import 'features/tips/view/tips_screen.dart';
import 'features/auth/view/change_password_screen.dart';

=======
import 'package:hormo_track/core/constants/app_routes.dart';
import 'features/onboarding/view/onBoarding_screen.dart';
import 'features/onboarding/view/splash_screen.dart';
>>>>>>> dev
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
=======
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Password UI',
     
      home: const ChangePasswordScreen(),
    );
  }
}