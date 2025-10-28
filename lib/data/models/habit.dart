// lib\data\models\habit.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
abstract class Habit with _$Habit {
  const factory Habit({
    int? id,
    required String name, // name of the habit
    required DateTime createdAt, // when the habit was created
    required int
    streak, // number of consecutive days the habit has been completed
    required int repeats, // how many times the habit should be done in a period
    @Default(false)
    bool isCompleted, // whether the habit is completed for the day
    @Default('') String unit, // np. "pages", "km", "glasses"
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
