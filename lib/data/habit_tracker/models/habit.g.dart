// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Habit _$HabitFromJson(Map<String, dynamic> json) => _Habit(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  streak: (json['streak'] as num).toInt(),
  repeats: (json['repeats'] as num).toInt(),
  period: json['period'] as String,
  isCompleted: json['isCompleted'] as bool? ?? false,
  unit: json['unit'] as String? ?? '',
);

Map<String, dynamic> _$HabitToJson(_Habit instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'createdAt': instance.createdAt.toIso8601String(),
  'streak': instance.streak,
  'repeats': instance.repeats,
  'period': instance.period,
  'isCompleted': instance.isCompleted,
  'unit': instance.unit,
};
