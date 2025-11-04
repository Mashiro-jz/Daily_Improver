// lib\features\habit_tracker\screens\habit_list_screen.dart
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'add_habit_dialog.dart';

class HabitListScreen extends ConsumerWidget {
  const HabitListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit_Tracker'),
        actions: [
          Tooltip(
            message: "Settings",
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to settings screen
              },
            ),
          ),
        ],
      ),
      body: const Center(child: Text('List of Habits will be displayed here.')),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tooltip: "Add new habit",
        onPressed: () async {
          final newHabit = await showDialog<Habit>(
            context: context,
            builder: (_) => const AddHabitDialog(),
          );
          if (newHabit != null && context.mounted) {
            // Add the new habit to the list
            // ref.invalidate(habitProvider); // TODO : Create habitProvider
          }
          // Navigate to add habit screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
