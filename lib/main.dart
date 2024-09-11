import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sportzbid/routes/app_routes.dart';
import 'package:sportzbid/view/loginpage.dart';
import 'package:sportzbid/view/registrationpage.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: '/',
      );
  }
}
