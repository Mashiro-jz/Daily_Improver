// lib\data\habit_tracker\providers\habits_providers.dart

import 'package:daily_helper/data/habit_tracker/datasources/habits_local_data_source.dart';
import 'package:daily_helper/data/habit_tracker/repositories/habits_repository_impl.dart';
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final habitsRepositoryProvider = Provider<HabitsRepositoryImpl>((ref) {
  final box = Hive.box<Habit>('habitsBox');
  final localDataSource = HabitsLocalDataSourceImpl(box);
  return HabitsRepositoryImpl(habitsLocalDataSource: localDataSource);
});
