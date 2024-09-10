import 'package:flutter/material.dart';
import 'package:sportzbid/view/loginpage.dart';
import 'package:sportzbid/view/registrationpage.dart'; // Import your CreateAccountPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SportzBid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/create-account': (context) => const CreateAccountPage(),
      },
    );
  }
}
