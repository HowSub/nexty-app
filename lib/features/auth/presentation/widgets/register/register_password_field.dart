import 'package:flutter/material.dart';
import 'package:nexty/config/theme/app_theme.dart';

class RegisterPasswordField extends StatefulWidget {
  const RegisterPasswordField({super.key});

  @override
  State<RegisterPasswordField> createState() => _RegisterPasswordFieldState();
}

class _RegisterPasswordFieldState extends State<RegisterPasswordField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: const Color(0xFFC0C0C0),
        fontSize: 15,
      ),
      obscureText: _passwordVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          color: Colors.white,
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        labelText: 'Пароль',
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
