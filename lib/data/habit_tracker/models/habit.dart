// lib\data\models\habit.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class Habit with _$Habit {
  const factory Habit({
    @HiveField(0) int? id,
    @HiveField(1) required String name, // name of the habit
    @HiveField(2) required DateTime createdAt, // when the habit was created
    @HiveField(3)
    required int
    streak, // number of consecutive days the habit has been completed
    @HiveField(4)
    required int repeats, // how many times the habit should be done in a period
    @HiveField(5) required String period, // e.g., "daily", "weekly", "monthly"
    @HiveField(6)
    @Default(false)
    bool isCompleted, // whether the habit is completed for the day
    @HiveField(7) @Default('') String unit, // np. "pages", "km", "glasses"
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
