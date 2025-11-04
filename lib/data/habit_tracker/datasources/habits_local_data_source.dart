// lib/data/habit_tracker/datasources/habits_local_data_source.dart

import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:hive/hive.dart';

abstract class HabitsRepository {
  Future<void> addHabit(Habit habit);
  Future<List<Habit>> getHabits();
  Future<void> deleteHabit(int id);
  Future<Habit> updateHabit(Habit habit);
  Future<void> toggleHabitCompletion(int id, DateTime date);
}

class HabitsLocalDataSourceImpl implements HabitsRepository {
  final Box<Habit> habitsBox;

  HabitsLocalDataSourceImpl(this.habitsBox);

  @override
  Future<void> addHabit(Habit habit) async {
    final id = habit.id ?? DateTime.now().millisecondsSinceEpoch;
    final newHabit = habit.copyWith(
      id: id,
      name: habit.name,
      createdAt: habit.createdAt,
      streak: 0,
      period: habit.period,
      isCompleted: false,
      unit: habit.unit,
    );
    await habitsBox.put(id, newHabit);
  }

  @override
  Future<List<Habit>> getHabits() async {
    return habitsBox.values.toList();
  }

  @override
  Future<void> deleteHabit(int id) async {
    await habitsBox.delete(id);
  }

  @override
  Future<Habit> updateHabit(Habit habit) async {
    if (habit.id == null) {
      throw Exception('Nie można zaktualizować nawyku bez ID.');
    }
    await habitsBox.put(habit.id, habit);
    return habit;
  }

  @override
  Future<void> toggleHabitCompletion(int id, DateTime date) async {
    final habit = habitsBox.get(id);
    if (habit != null) {
      // Tworzymy nową kopię habit z odwróconym isCompleted
      final updatedHabit = habit.copyWith(
        isCompleted: !habit.isCompleted,
        streak: !habit.isCompleted ? habit.streak + 1 : habit.streak,
      );

      await habitsBox.put(id, updatedHabit);
    }
  }
}
