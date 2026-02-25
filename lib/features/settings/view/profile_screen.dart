import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Icon(Icons.settings_outlined, color: Colors.pinkAccent, size: 28),
                  ),
                ),

                SizedBox(height: 20), 
                 
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black54),
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                    ),
                    SizedBox(width: 20),
                    Text(
                      "My profile",
                      style: TextStyle(
                        color: Color(0xFFE96677),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30), 

                
                customTextField(Icons.person, "User Name"),
                SizedBox(height: 25),
                
                customTextField(Icons.email, "Email"),
                SizedBox(height: 25),
                
                customTextField(Icons.lock, "Password"),
                SizedBox(height: 25),
                
              
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextField(IconData icon, String hint) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(color: Colors.black), 
        decoration: InputDecoration(
        
          prefixIcon: Icon(icon, color: Colors.black), 
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.black87, 
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }
}