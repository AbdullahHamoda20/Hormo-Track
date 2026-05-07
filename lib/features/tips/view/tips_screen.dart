import 'package:flutter/material.dart';

class PcosTipsScreen extends StatelessWidget {
  const PcosTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "PCOS Tips & Self-Care",
          style: TextStyle(
            color: Color(0xFFE0667D), 
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: const [
          Icon(Icons.settings_outlined, color: Color(0xFFE0667D)),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            buildTipCard("Nutrition", [
              "Reduce sugar and processed foods",
              "Eat more veggies and protein",
              "Drink plenty of water",
            ]),
            buildTipCard("Exercise", [
              "Walk for 30 minutes daily",
              "Try yoga or light workouts",
              "Take good rest between sessions",
            ]),
            buildTipCard("Lifestyle", [
              "Sleep 7-8 hours",
              "Manage your stress",
              "Take time for yourself every day",
            ]),
            
            
            const SizedBox(height: 15), 
            const Text(
              "Check your lab results every 6 months", 
              style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10), 

            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    
                    color: const Color(0xFFE0667D).withOpacity(0.4), 
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE0667D),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0, 
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Back to home", 
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildTipCard(String title, List<String> tips) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            
            color: const Color(0xFFE0667D).withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(color: const Color(0xFFFFE4E9), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title, 
            style: const TextStyle(
              color: Color(0xFFE0667D), 
              fontWeight: FontWeight.bold, 
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 12),
          ...tips.map((tip) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("• ", style: TextStyle(color: Color(0xFFE0667D), fontSize: 18, fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text(
                        tip, 
                        style: const TextStyle(color: Colors.black87, fontSize: 16, height: 1.4),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}