import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryPink = Color(0xFFE96677);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Icon(Icons.settings_outlined, color: primaryPink, size: 28),
                ),
              ),

              SizedBox(height: 10),

             
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black54),
                    onPressed: () => Navigator.pop(context), 
                  ),
                  SizedBox(width: 10), 
                  Text(
                    "About Us",
                    style: TextStyle(
                      color: primaryPink,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60), 

                 // 
              const Spacer(flex: 1),              
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "We are a team of healthcare professionals and wellness experts dedicated providing support and resources for individuals with PCOS.",
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