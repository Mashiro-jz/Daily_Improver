// lib/main.dart
import 'package:daily_helper/features/habit_tracker/screens/habit_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = 

    return MaterialApp.router(
      title: 'Habit Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: router,
    );
  }
}
