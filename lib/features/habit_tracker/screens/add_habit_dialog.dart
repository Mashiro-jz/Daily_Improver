// lib\features\habit_tracker\screens\add_habit_dialog.dart
import 'package:daily_helper/data/models/habit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddHabitDialog extends ConsumerStatefulWidget {
  const AddHabitDialog({super.key});

  @override
  ConsumerState<AddHabitDialog> createState() => _AddHabitDialogState();
}

class _AddHabitDialogState extends ConsumerState<AddHabitDialog> {
  final TextEditingController _habitNameController = TextEditingController();

  @override
  void dispose() {
    _habitNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Habit'),
      content: TextField(
        controller: _habitNameController,
        decoration: const InputDecoration(hintText: 'Enter habit name'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final habitName = _habitNameController.text.trim();
            if (habitName.isNotEmpty) {
              ref
                  .read(habitProvider.notifier)
                  .addHabit(
                    Habit(
                      name: habitName,
                      createdAt: null,
                      streak: null,
                      repeats: null,
                    ),
                  ); // TODO: Update with proper fields
              Navigator.of(context).pop(context);
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
