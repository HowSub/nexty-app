import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexty/config/theme/app_theme.dart';
import 'package:nexty/features/auth/presentation/widgets/register/register_button.dart';
import 'package:nexty/features/auth/presentation/widgets/register/register_confirm_password_field.dart';
import 'package:nexty/features/auth/presentation/widgets/register/register_email_field.dart';
import 'package:nexty/features/auth/presentation/widgets/register/register_password_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  'Регистрация',
                  style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(height: 48),

                RegisterEmailField(),

                const SizedBox(height: 24),

                RegisterPasswordField(),

                const SizedBox(height: 24),

                RegisterConfirmPasswordField(),

                const SizedBox(height: 40),

                RegisterButton(),

                const SizedBox(height: 24),

                GestureDetector(
                  onTap: () {
                    context.go('/');
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Уже есть аккаунт? ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'Войти',
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
