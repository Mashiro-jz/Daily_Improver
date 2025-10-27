// lib\features\habit_tracker\screens\habit_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HabitListScreen extends ConsumerWidget {
  const HabitListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker')),
      body: const Center(child: Text('List of Habits will be displayed here.')),
    );
  }
}
