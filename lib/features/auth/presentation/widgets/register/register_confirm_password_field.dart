import 'package:flutter/material.dart';
import 'package:nexty/config/theme/app_theme.dart';

class RegisterConfirmPasswordField extends StatefulWidget {
  const RegisterConfirmPasswordField({super.key});

  @override
  State<RegisterConfirmPasswordField> createState() =>
      _RegisterConfirmPasswordState();
}

class _RegisterConfirmPasswordState
    extends State<RegisterConfirmPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: const Color(0xFFC0C0C0),
        fontSize: 15,
      ),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Подтвердите пароль',
        labelStyle: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 15,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: greenColor, width: 1),
        ),
      ),
    );
  }
}
