import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.settings_outlined, 
                  color: Color(0xFFE96677),
                  size: 28,
                ),
              ),
              
              const SizedBox(height: 10), 

              
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back, color: Colors.black54),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Color(0xFFE96677),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              customTextField(label: "Name"),
              const SizedBox(height: 15),
              customTextField(label: "Email"),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFCE4EC),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFF8BBD0)),
                ),
                child: const Text("Message", style: TextStyle(color: Colors.black54)),
              ),
              const SizedBox(height: 10),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFFF8BBD0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFFE57385)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE57385),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField({required String label}) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFFCE4EC),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            border: Border.all(color: const Color(0xFFF8BBD0)),
          ),
          child: Text(label, style: const TextStyle(color: Colors.black54)),
        ),
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(color: Color(0xFFF8BBD0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(color: Color(0xFFE57385)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}