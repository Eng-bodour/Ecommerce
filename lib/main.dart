import 'package:ecommerce/screens/loginscreen.dart';
import 'package:ecommerce/screens/signupscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'E-Commerce', initialRoute: '/login', routes: {
    '/login': (context) => const LogInScreen(),
    '/signup': (context) => const SignUpScreen(),
  }));
}
