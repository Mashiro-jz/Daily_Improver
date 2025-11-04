import 'package:flutter/material.dart';
import 'package:daily_helper/features/habit_tracker/screens/habit_list_screen.dart';
// import 'package:daily_helper/features/notes/screens/notes_screen.dart';
// import 'package:daily_helper/features/finance_tracker/screens/finance_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final _pages = const [
    HabitListScreen(),
    // NotesScreen(),
    // FinanceScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.track_changes), label: 'Habits'),
          NavigationDestination(icon: Icon(Icons.note_alt), label: 'Notes'),
          NavigationDestination(
              icon: Icon(Icons.attach_money), label: 'Finance'),
        ],
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
      ),
    );
  }
}
