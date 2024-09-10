import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/core_widgets/custom_button.dart';
import 'package:sportzbid/core_widgets/custom_textfield.dart';
import 'package:sportzbid/utilis/responsive.dart'; // Import the responsive utility

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive; // Get responsive instance

    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Dark background color
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(5)), // Use responsive padding
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor, // Card color
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(responsive.wp(4)), // Use responsive padding
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create an account',
                  style: AppTypography.interRegular.copyWith(
                    fontSize: responsive.sp(24),
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: responsive.hp(3)),
                const CustomTextField(
                  hintText: 'Name',
                  prefixIcon: Icons.man,
                ),
                SizedBox(height: responsive.hp(2)),
                const CustomTextField(
                  hintText: 'Mobile number',
                  prefixIcon: Icons.phone,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: responsive.hp(2)),
                CustomTextField(
                  hintText: 'Password',
                  obscureText: _obscurePassword,
                  prefixIcon: Icons.lock,
                  suffixIcon: _obscurePassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onSuffixIconPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                SizedBox(height: responsive.hp(2)),
                CustomTextField(
                  hintText: 'Confirm Password',
                  obscureText: _obscureConfirmPassword,
                  prefixIcon: Icons.lock,
                  suffixIcon: _obscureConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onSuffixIconPressed: () {
                    setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    });
                  },
                ),
                SizedBox(height: responsive.hp(4)),
                CustomButton(
                  text: 'Create Account',
                  onPressed: () {
                    print('tapped');
                  },
                ),
                SizedBox(height: responsive.hp(3)),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontSize: responsive.sp(14),
                      color: Colors.white70,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Log in',
                        style: AppTypography.interRegular.copyWith(
                          fontSize: responsive.sp(14),
                          color: Colors.white,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(
                                context); // Navigate back to the LoginPage
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
