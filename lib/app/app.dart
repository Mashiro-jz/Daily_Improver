// lib/app/navigation/app.dart
import 'package:daily_helper/app/routes.dart';
import 'package:daily_helper/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DailyImproverApp extends StatelessWidget {
  const DailyImproverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Daily Helper',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: router,
    );
  }
}
