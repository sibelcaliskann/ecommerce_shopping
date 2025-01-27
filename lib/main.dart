import 'package:ecommerce_shopping/screens/login_screen.dart';
import 'package:ecommerce_shopping/screens/navigation_screen.dart';
import 'package:ecommerce_shopping/screens/onboarding_screen.dart';
import 'package:ecommerce_shopping/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "ECommerce Shopping",
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969),
      ),

      home:  NavigationScreen(),
      //LoginScreen()
          //NavigationScreen()  ,
    );
  }
}
