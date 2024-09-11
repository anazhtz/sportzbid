import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/utilis/responsive.dart';

class TournamentCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String sport;
  final String buttonText;
  final Color buttonColor;

  const TournamentCard({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.sport,
    required this.buttonText,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    return Card(
      color: AppColors.primaryColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.interRegular.copyWith(
                fontSize: responsive.sp(20),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  location,
                  style: AppTypography.interRegular.copyWith(
                fontSize: responsive.sp(15),
                color: Colors.white70,
              ),
                ),
                const SizedBox(width: 50),
                Text(
                  sport,
                  style: AppTypography.interRegular.copyWith(
                fontSize: responsive.sp(15),
                color: Colors.white70,
              ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: AppTypography.interRegular.copyWith(
                fontSize: responsive.sp(15),
                color: Colors.white70,
              ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      buttonText,
                      style: AppTypography.interRegular.copyWith(
                        fontSize: responsive.sp(14),
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
