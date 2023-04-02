import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitacycle_collector/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: const Login(title: 'Flutter Demo Home Page'),
    );
  }
}
