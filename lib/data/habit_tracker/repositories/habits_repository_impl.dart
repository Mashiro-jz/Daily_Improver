// lib/data/habit_tracker/repositories/habits_repository_impl.dart
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import '../datasources/habits_local_data_source.dart';

class HabitsRepositoryImpl implements HabitsRepository {
  final HabitsRepository habitsLocalDataSource;

  HabitsRepositoryImpl({required this.habitsLocalDataSource});

  @override
  Future<void> addHabit(Habit habit) async {
    await habitsLocalDataSource.addHabit(habit);
  }

  @override
  Future<void> deleteHabit(int id) async {
    await habitsLocalDataSource.deleteHabit(id);
  }

  @override
  Future<List<Habit>> getHabits() async {
    return await habitsLocalDataSource.getHabits();
  }

  @override
  Future<void> toggleHabitCompletion(int id, DateTime date) async {
    await habitsLocalDataSource.toggleHabitCompletion(id, date);
  }

  @override
  Future<Habit> updateHabit(Habit habit) async {
    return await habitsLocalDataSource.updateHabit(habit);
  }
}
