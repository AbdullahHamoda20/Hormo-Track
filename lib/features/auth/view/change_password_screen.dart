import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
        ],
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