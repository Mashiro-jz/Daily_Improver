// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Habit {

@HiveField(0) int? get id;@HiveField(1) String get name;// name of the habit
@HiveField(2) DateTime get createdAt;// when the habit was created
@HiveField(3) int get streak;// number of consecutive days the habit has been completed
@HiveField(4) int get repeats;// how many times the habit should be done in a period
@HiveField(5) String get period;// e.g., "daily", "weekly", "monthly"
@HiveField(6) bool get isCompleted;// whether the habit is completed for the day
@HiveField(7) String get unit;
/// Create a copy of Habit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabitCopyWith<Habit> get copyWith => _$HabitCopyWithImpl<Habit>(this as Habit, _$identity);

  /// Serializes this Habit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Habit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.repeats, repeats) || other.repeats == repeats)&&(identical(other.period, period) || other.period == period)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,streak,repeats,period,isCompleted,unit);

@override
String toString() {
  return 'Habit(id: $id, name: $name, createdAt: $createdAt, streak: $streak, repeats: $repeats, period: $period, isCompleted: $isCompleted, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $HabitCopyWith<$Res>  {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) _then) = _$HabitCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int? id,@HiveField(1) String name,@HiveField(2) DateTime createdAt,@HiveField(3) int streak,@HiveField(4) int repeats,@HiveField(5) String period,@HiveField(6) bool isCompleted,@HiveField(7) String unit
});




}
/// @nodoc
class _$HabitCopyWithImpl<$Res>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._self, this._then);

  final Habit _self;
  final $Res Function(Habit) _then;

/// Create a copy of Habit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? createdAt = null,Object? streak = null,Object? repeats = null,Object? period = null,Object? isCompleted = null,Object? unit = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,repeats: null == repeats ? _self.repeats : repeats // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Habit].
extension HabitPatterns on Habit {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Habit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Habit() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Habit value)  $default,){
final _that = this;
switch (_that) {
case _Habit():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Habit value)?  $default,){
final _that = this;
switch (_that) {
case _Habit() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int? id, @HiveField(1)  String name, @HiveField(2)  DateTime createdAt, @HiveField(3)  int streak, @HiveField(4)  int repeats, @HiveField(5)  String period, @HiveField(6)  bool isCompleted, @HiveField(7)  String unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Habit() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.streak,_that.repeats,_that.period,_that.isCompleted,_that.unit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int? id, @HiveField(1)  String name, @HiveField(2)  DateTime createdAt, @HiveField(3)  int streak, @HiveField(4)  int repeats, @HiveField(5)  String period, @HiveField(6)  bool isCompleted, @HiveField(7)  String unit)  $default,) {final _that = this;
switch (_that) {
case _Habit():
return $default(_that.id,_that.name,_that.createdAt,_that.streak,_that.repeats,_that.period,_that.isCompleted,_that.unit);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int? id, @HiveField(1)  String name, @HiveField(2)  DateTime createdAt, @HiveField(3)  int streak, @HiveField(4)  int repeats, @HiveField(5)  String period, @HiveField(6)  bool isCompleted, @HiveField(7)  String unit)?  $default,) {final _that = this;
switch (_that) {
case _Habit() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.streak,_that.repeats,_that.period,_that.isCompleted,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Habit implements Habit {
  const _Habit({@HiveField(0) this.id, @HiveField(1) required this.name, @HiveField(2) required this.createdAt, @HiveField(3) required this.streak, @HiveField(4) required this.repeats, @HiveField(5) required this.period, @HiveField(6) this.isCompleted = false, @HiveField(7) this.unit = ''});
  factory _Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

@override@HiveField(0) final  int? id;
@override@HiveField(1) final  String name;
// name of the habit
@override@HiveField(2) final  DateTime createdAt;
// when the habit was created
@override@HiveField(3) final  int streak;
// number of consecutive days the habit has been completed
@override@HiveField(4) final  int repeats;
// how many times the habit should be done in a period
@override@HiveField(5) final  String period;
// e.g., "daily", "weekly", "monthly"
@override@JsonKey()@HiveField(6) final  bool isCompleted;
// whether the habit is completed for the day
@override@JsonKey()@HiveField(7) final  String unit;

/// Create a copy of Habit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HabitCopyWith<_Habit> get copyWith => __$HabitCopyWithImpl<_Habit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HabitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Habit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.repeats, repeats) || other.repeats == repeats)&&(identical(other.period, period) || other.period == period)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,streak,repeats,period,isCompleted,unit);

@override
String toString() {
  return 'Habit(id: $id, name: $name, createdAt: $createdAt, streak: $streak, repeats: $repeats, period: $period, isCompleted: $isCompleted, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$HabitCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$HabitCopyWith(_Habit value, $Res Function(_Habit) _then) = __$HabitCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int? id,@HiveField(1) String name,@HiveField(2) DateTime createdAt,@HiveField(3) int streak,@HiveField(4) int repeats,@HiveField(5) String period,@HiveField(6) bool isCompleted,@HiveField(7) String unit
});




}
/// @nodoc
class __$HabitCopyWithImpl<$Res>
    implements _$HabitCopyWith<$Res> {
  __$HabitCopyWithImpl(this._self, this._then);

  final _Habit _self;
  final $Res Function(_Habit) _then;

/// Create a copy of Habit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? createdAt = null,Object? streak = null,Object? repeats = null,Object? period = null,Object? isCompleted = null,Object? unit = null,}) {
  return _then(_Habit(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,repeats: null == repeats ? _self.repeats : repeats // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
