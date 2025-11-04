// lib\data\habit_tracker\state\habits_cubit.dart

import 'package:daily_helper/data/habit_tracker/datasources/habits_local_data_source.dart';
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HabitsCubit extends Cubit<List<Habit>> {
  final HabitsRepository habitsRepository;

  HabitsCubit({required this.habitsRepository}) : super([]);

  Future<void> loadHabits() async {
    final habits = await habitsRepository.getHabits();
    emit(habits);
  }

  Future<void> addHabit(Habit habit) async {
    await habitsRepository.addHabit(habit);
    await loadHabits();
  }

  Future<void> deleteHabit(int id) async {
    await habitsRepository.deleteHabit(id);
    await loadHabits();
  }

  Future<void> toggleHabitCompletion(int id, DateTime date) async {
    await habitsRepository.toggleHabitCompletion(id, date);
    await loadHabits();
  }

  Future<void> updateHabit(Habit habit) async {
    await habitsRepository.updateHabit(habit);
    await loadHabits();
  }

  Future<List<Habit>> getHabits() async {
    return await habitsRepository.getHabits();
  }
}
