import 'package:flutter/material.dart';
// تأكدي من عمل import للملف اللي فيه صفحة الـ tips
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
   
      home: const PcosTipsScreen(), 
    );
  }
}