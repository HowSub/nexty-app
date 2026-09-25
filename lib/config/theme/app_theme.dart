import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  fontFamily: 'Inter',
  scaffoldBackgroundColor: Colors.transparent,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.white,
    selectionColor: Colors.white.withOpacity(0.5),
    selectionHandleColor: Colors.white,
  ),
);

final bgBlackGradient = LinearGradient(
  colors: [Color(0xFF0B0B0B), Color(0xFF1C1C1C)],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

final greenColor = Color(0xFF65FFC4);
