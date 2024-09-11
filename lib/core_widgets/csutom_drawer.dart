import 'package:flutter/material.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/utilis/responsive.dart';

class CustomDrawer extends StatelessWidget {
  final String currentPage;

  const CustomDrawer({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    return Drawer(
      child: Container(
        color: AppColors.textFeildColor,
        child: Column(
          children: [
            SizedBox(height: responsive.hp(6)), // Adjusted height for top spacing
            Text(
              'SPORTZBID',
              style: TextStyle(
                color: Colors.white,
                fontSize: responsive.sp(28), // Responsive font size
                fontWeight: FontWeight.bold,
                letterSpacing: responsive.wp(0.5), // Responsive letter spacing
              ),
            ),
            SizedBox(height: responsive.hp(6)), // Adjusted height for spacing between elements
            Container(
              color: currentPage == 'Home' ? AppColors.secondaryColor : null,
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: currentPage == 'Home'
                      ? AppColors.buttonColor
                      : Colors.white,
                  size: responsive.sp(28), // Responsive icon size
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.sp(18), // Responsive text size
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              color: currentPage == 'Tournaments'
                  ? Colors.white.withOpacity(0.2)
                  : null,
              child: ListTile(
                leading: Icon(
                  Icons.emoji_events,
                  color: currentPage == 'Tournaments'
                      ? AppColors.buttonColor
                      : Colors.white,
                  size: responsive.sp(28), // Responsive icon size
                ),
                title: Text(
                  'My Tournaments',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.sp(18), // Responsive text size
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              color: currentPage == 'Auctions'
                  ? Colors.white.withOpacity(0.2)
                  : null,
              child: ListTile(
                leading: Icon(
                  Icons.group,
                  color: currentPage == 'Auctions'
                      ? AppColors.buttonColor
                      : Colors.white, // Change icon color
                  size: responsive.sp(28), // Responsive icon size
                ),
                title: Text(
                  'Auctions',
                  style: TextStyle(
                    color: Colors.white, // Always white text color
                    fontSize: responsive.sp(18), // Responsive text size
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
