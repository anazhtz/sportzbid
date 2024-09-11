import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/utilis/responsive.dart';

class CustomSearchBarButton extends StatelessWidget {
  const CustomSearchBarButton({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive.wp(20),
      height: responsive.hp(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.buttonColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Search",
          style: AppTypography.interRegular.copyWith(
            fontSize: responsive.sp(16),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}