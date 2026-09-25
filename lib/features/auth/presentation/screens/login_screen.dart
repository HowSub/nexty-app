import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexty/config/theme/app_theme.dart';
import 'package:nexty/features/auth/presentation/widgets/login/login_button.dart';
import 'package:nexty/features/auth/presentation/widgets/login/login_email_field.dart';
import 'package:nexty/features/auth/presentation/widgets/login/login_forgot_password.dart';
import 'package:nexty/features/auth/presentation/widgets/login/login_password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: bgBlackGradient),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                    color: greenColor,
                    fontSize: 36,
                    fontFamily: 'Comforter-Regular',
                  ),
                ),
                Text(
                  'Вход',
                  style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(height: 48),

                LoginEmailField(),

                const SizedBox(height: 24),

                LoginPasswordField(),

                const SizedBox(height: 24),

                LoginForgotPassword(),

                const SizedBox(height: 16),

                LoginButton(),

                const SizedBox(height: 24),

                GestureDetector(
                  onTap: () {
                    context.go('/register');
                    
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Нет аккаунта? ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'Зарегистрироваться',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: greenColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
