// lib\data\habit_tracker\datasources\habits_local_data_source.dart

import 'package:daily_helper/data/habit_tracker/models/habit.dart';

abstract class HabitsRepository {
  Future<void> addHabit(Habit habit);
  Future<List<Habit>> getHabits();
  Future<void> deleteHabit(String id);
  Future<Habit> updateHabit(Habit habit);
  Future<void> toggleHabitCompletion(String id, DateTime date);
}
