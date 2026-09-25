import 'package:flutter/material.dart';
import 'package:nexty/config/routes/app_router.dart';
import 'package:nexty/config/theme/app_theme.dart';

class NextyApp extends StatelessWidget {
  const NextyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routerConfig: appRouter,
    );
  }
}
