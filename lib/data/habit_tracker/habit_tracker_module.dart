// lib\data\habit_tracker\habit_tracker_module.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:daily_helper/data/habit_tracker/datasources/habits_local_data_source.dart';
import 'package:daily_helper/data/habit_tracker/repositories/habits_repository_impl.dart';
import 'package:daily_helper/data/habit_tracker/state/habits_cubit.dart';
import 'package:daily_helper/features/habit_tracker/screens/habit_list_screen.dart';

class HabitTrackerModule extends StatelessWidget {
  const HabitTrackerModule({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<Habit>('habitsBox');
    final dataSource = HabitsLocalDataSourceImpl(box);
    final repository = HabitsRepositoryImpl(habitsLocalDataSource: dataSource);

    return BlocProvider(
      create: (_) => HabitsCubit(habitsRepository: repository)..loadHabits(),
      child: const HabitListScreen(),
    );
  }
}
