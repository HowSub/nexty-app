import 'package:flutter/material.dart';
import 'package:nexty/config/theme/app_theme.dart';

class LoginEmailField extends StatefulWidget {
  const LoginEmailField({super.key});

  @override
  State<LoginEmailField> createState() => _LoginEmailFieldState();
}

class _LoginEmailFieldState extends State<LoginEmailField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: const Color(0xFFC0C0C0),
        fontSize: 15,
      ),
      decoration: InputDecoration(
        labelText: 'Почта',
        labelStyle: TextStyle(color: Colors.white),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: greenColor, width: 1.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
