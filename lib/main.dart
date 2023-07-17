import 'package:flutter/material.dart';
import 'package:shoeapp/common/produccreeano.dart';
import 'package:shoeapp/screen/loginscreen.dart';
import 'package:shoeapp/screen/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F7F7),
      ),
      home: const LoginScreen(),
    );
  }
}
