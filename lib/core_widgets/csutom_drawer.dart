import 'package:flutter/material.dart';
import 'package:sportzbid/core/appcolor.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.textFeildColor,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.textFeildColor,
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SPORTZBID',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white, size: 28),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading:
                  const Icon(Icons.emoji_events, color: Colors.white, size: 28),
              title: const Text(
                'My Tournaments',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group, color: Colors.white, size: 28),
              title: const Text(
                'Auctions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
