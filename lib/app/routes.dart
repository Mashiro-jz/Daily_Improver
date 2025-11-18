// lib/app/routes.dart
import 'package:daily_helper/app/navigation/main_navigation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:daily_helper/data/habit_tracker/datasources/habits_local_data_source.dart';
import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:daily_helper/data/habit_tracker/repositories/habits_repository_impl.dart';
import 'package:daily_helper/data/habit_tracker/state/habits_cubit.dart';
// import 'package:daily_helper/features/notes/screens/notes_screen.dart';
// import 'package:daily_helper/features/finance_tracker/screens/finance_screen.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        final box = Hive.box<Habit>('habitsBox');
        final dataSource = HabitsLocalDataSourceImpl(box);
        final repository =
            HabitsRepositoryImpl(habitsLocalDataSource: dataSource);
        return BlocProvider(
          create: (_) =>
              HabitsCubit(habitsRepository: repository)..loadHabits(),
          child: const MainNavigation(),
        );
      },
    ),
  ],
);
