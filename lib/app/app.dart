// lib/app/navigation/app.dart
import 'package:daily_helper/core/theme/app_theme.dart';
import 'package:daily_helper/features/habit_tracker/screens/habit_list_screen.dart';
import 'package:flutter/material.dart';
// import 'routes.dart';

class DailyImproverApp extends StatelessWidget {
  const DailyImproverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Improver',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: HabitListScreen(),
      //routerConfig: router, // zrób routes.dart to się naprawi
    );
  }
}
