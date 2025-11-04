// lib/data/models/habit.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@HiveType(typeId: 0)
@freezed
class Habit with _$Habit {
  const factory Habit({
    @HiveField(0) int? id,
    @HiveField(1) required String name, // name of the habit
    @HiveField(2) required DateTime createdAt, // when the habit was created
    @HiveField(3) required int streak, // number of consecutive days
    @HiveField(4) required String period, // e.g. "daily", "weekly"
    @HiveField(5) @Default(false) bool isCompleted, // is completed for the day
    @HiveField(6) @Default('') String unit, // e.g. "pages", "km", "glasses"
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
