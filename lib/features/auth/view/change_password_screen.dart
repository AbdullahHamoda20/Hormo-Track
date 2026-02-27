import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_assets.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.authBackgroundImage))
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              spacing: 10,
            children: [
              SizedBox(height: 200,),
              const Text(
                "Change Your Password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE0667D),
                ),
              ),
              const SizedBox(height: 40),
      
      
              customInputField("New Password", Icons.lock_rounded),
              const SizedBox(height: 25),
      
              customInputField("Confirm Password", Icons.lock_rounded),
      
              const SizedBox(height: 35),
      
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE0667D),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Change Your Password",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customInputField(String label, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("  $label", style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.1), 
                blurRadius: 10, 
                spreadRadius: 2,
              )
            ],
          ),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: label,
              hintStyle: const TextStyle(color: Colors.grey), 
            
              prefixIcon: Icon(icon, color: Colors.grey, size: 22),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), 
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}