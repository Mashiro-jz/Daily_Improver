// lib/features/habit_tracker/screens/habit_list_screen.dart

import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:daily_helper/data/habit_tracker/state/habits_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: BlocBuilder<HabitsCubit, List<Habit>>(
        builder: (context, habits) {
          if (habits.isEmpty) {
            return const Center(child: Text('No habits yet.'));
          }
          return ListView.builder(
            itemCount: habits.length,
            itemBuilder: (context, index) {
              final habit = habits[index];
              return ListTile(
                title: Text(habit.name),
                subtitle: Text('Streak: ${habit.streak}'),
                trailing: Checkbox(
                  value: habit.isCompleted,
                  onChanged: (_) => context
                      .read<HabitsCubit>()
                      .toggleHabitCompletion(habit.id ?? 0, DateTime.now()),
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tooltip: "Add new habit",
        onPressed: () async {
          await showDialog<Habit>(
            context: context,
            builder: (_) => const AddHabitDialog(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
