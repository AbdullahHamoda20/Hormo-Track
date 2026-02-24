import 'package:flutter/material.dart';
import 'package:hormo_track/core/constants/app_assets.dart';
import 'package:hormo_track/core/constants/app_colors.dart';
import 'package:hormo_track/core/constants/app_strings.dart';
import 'package:hormo_track/features/auth/view/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscurePassword = true;
  bool obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          /// Background
          Positioned.fill(
            child: Image.asset(
              AppAssets.authBackgroundImage,
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 80),

                    /// Title
                    const Text(
                      AppStrings.signup,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.header,
                      ),
                    ),

                    const SizedBox(height: 40),

                    /// Username
                    _buildField(
                      hint: AppStrings.username,
                      icon: Icons.person_2_rounded,
                    ),

                    const SizedBox(height: 20),

                    /// Email
                    _buildField(
                      hint: AppStrings.email,
                      icon: Icons.email_rounded,
                    ),

                    const SizedBox(height: 20),

                    /// Password
                    _buildField(
                      hint: AppStrings.password,
                      icon: Icons.lock_rounded,
                      isPassword: true,
                      isConfirm: false,
                    ),

                    const SizedBox(height: 20),

                    /// Confirm Password
                    _buildField(
                      hint: AppStrings.confirmPassword,
                      icon: Icons.lock_clock_rounded,
                      isPassword: true,
                      isConfirm: true,
                    ),

                    const SizedBox(height: 40),

                    /// Sign Up Button
                    SizedBox(
                      width: 200,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttoColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          AppStrings.signup,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Login text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.haveAccount,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 2),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            AppStrings.login,
                            style: TextStyle(
                              color: AppColors.header,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 135),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField({
    required String hint,
    required IconData icon,
    bool isPassword = false,
    bool isConfirm = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.buttoColor.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword
            ? (isConfirm ? obscureConfirm : obscurePassword)
            : false,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: const Color.fromARGB(150, 0, 0, 0)),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    (isConfirm ? obscureConfirm : obscurePassword)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      if (isConfirm) {
                        obscureConfirm = !obscureConfirm;
                      } else {
                        obscurePassword = !obscurePassword;
                      }
                    });
                  },
                )
              : null,
          hintText: hint,
          filled: true,
          fillColor: const Color(0xffFFFFFF),
          contentPadding: const EdgeInsets.symmetric(vertical: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
