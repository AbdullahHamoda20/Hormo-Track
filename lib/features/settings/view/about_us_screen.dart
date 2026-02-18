import 'package:flutter/material.dart';

class about_us_screen extends StatelessWidget {
  const about_us_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // SafeArea 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.black87),
                  ),
                  Icon(Icons.settings_outlined, color: Colors.pink[200]),
                ],
              ),
              const SizedBox(height: 30),

              // 
              const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE57385), // 
                ),
              ),

              // 
              const Spacer(flex: 1),

              // (Body Text)
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'We are a team of healthcare professionals and wellness experts dedicated providing support and resources for individuals with PCOS.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5, // 
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              //
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}