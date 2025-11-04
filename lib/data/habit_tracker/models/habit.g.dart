// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitAdapter extends TypeAdapter<Habit> {
  @override
  final int typeId = 0;

  @override
  Habit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Habit(
      id: fields[0] as int?,
      name: fields[1] as String,
      createdAt: fields[2] as DateTime,
      streak: fields[3] as int,
      period: fields[4] as String,
      isCompleted: fields[5] as bool,
      unit: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Habit obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.streak)
      ..writeByte(4)
      ..write(obj.period)
      ..writeByte(5)
      ..write(obj.isCompleted)
      ..writeByte(6)
      ..write(obj.unit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      streak: (json['streak'] as num).toInt(),
      period: json['period'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      unit: json['unit'] as String? ?? '',
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'streak': instance.streak,
      'period': instance.period,
      'isCompleted': instance.isCompleted,
      'unit': instance.unit,
    };
