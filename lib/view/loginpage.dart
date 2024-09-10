  import 'package:flutter/gestures.dart';
  import 'package:flutter/material.dart';
  import 'package:sportzbid/core/app_typography.dart';
  import 'package:sportzbid/core/appcolor.dart';
  import 'package:sportzbid/core_widgets/custom_button.dart';
  import 'package:sportzbid/core_widgets/custom_textfield.dart';
  import 'package:sportzbid/utilis/responsive.dart'; // Import the custom text field

  class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {
    bool _obscurePassword = true;

    @override
    Widget build(BuildContext context) {
      final responsive = context.responsive; // Get responsive instance
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
                  Text(
                    'Log in',
                    style: AppTypography.interRegular.copyWith(
                      fontSize: responsive.sp(24),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  const CustomTextField(
                    hintText: 'Mobile number',
                    prefixIcon: Icons.phone,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hintText: 'Password',
                    obscureText: _obscurePassword,
                    prefixIcon: Icons.lock,
                    suffixIcon: _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    onSuffixIconPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  SizedBox(height: responsive.hp(2)),
                  CustomButton(
                    text: 'Create Account',
                    onPressed: () {
                      Navigator.pushNamed(context, '/create-account');
                    },
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    text: TextSpan(
                      text: 'Doesn’t have an account? ',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/create-account');
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
