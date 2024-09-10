import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/core_widgets/custom_button.dart';
import 'package:sportzbid/core_widgets/reg_log_buttons.dart'; // Import the custom button

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Dark background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor, // Card color
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                const CustomTextField(
                  hintText: 'Name',
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Mobile number',
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 32),
                CustomButton(
                  text: 'Create Account',
                  onPressed: () {
                    print('tapped');
                  },
                ),
                const SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Log in',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
