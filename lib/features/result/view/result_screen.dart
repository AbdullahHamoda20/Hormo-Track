import 'package:flutter/material.dart';
import '../../tips/view/tips_screen.dart'; 

class PcosResultScreen extends StatelessWidget {
  const PcosResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset(
                  'assets/images/result.png', 
                  height: 220,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),

                
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 45),
                  decoration: BoxDecoration(
                   
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFFF5F6), Color(0xFFFFD1DA)],
                    ),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                    border: Border.all(color: Colors.black12, width: 0.5),
                  ),
                  child: const Text(
                    "PCOS Diagnosis : Negative",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800, 
                      color: Color(0xFF2D2D2D),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

              //Tips & Self-Care
                SizedBox(
                  width: 240,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE0667D),
                      elevation: 4,
                      shadowColor: const Color(0xFFE0667D).withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          var pcosTipsScreen = const PcosResultScreen();
                          return pcosTipsScreen;
                        }),
                      );
                    },
                    child: const Text(
                      "Tips & Self-Care",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0667D),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}