import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/utilis/responsive.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive; // Get responsive instance
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTypography.interRegular.copyWith(
              fontSize: responsive.sp(16),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
