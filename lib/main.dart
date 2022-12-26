import 'package:dads_dairy/screens/dairy_detailed_screen.dart';
import 'package:dads_dairy/screens/final_screen.dart';
import 'package:dads_dairy/screens/forgot_password.dart';
import 'package:dads_dairy/screens/login_screen.dart';
import 'package:dads_dairy/screens/my_dairy_screen.dart';
import 'package:dads_dairy/screens/note_screen.dart';
import 'package:dads_dairy/screens/place_order_screen.dart';
import 'package:dads_dairy/screens/profile_setup.dart';
import 'package:dads_dairy/screens/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dads Dairy',
      theme: ThemeData(
        fontFamily: "Nunito",
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xffe25b63),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xfff8f8f8),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xffe25b63),
            ),
          ),
        ),
      ),
      home: const DairyDetailedScreen(),
    );
  }
}
