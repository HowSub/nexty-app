import 'package:flutter/material.dart';
import 'package:nexty/config/theme/app_theme.dart';

class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            'Забыли пароль?',
            style: TextStyle(color: greenColor, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
