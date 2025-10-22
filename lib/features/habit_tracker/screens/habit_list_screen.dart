import 'package:flutter/material.dart';

class HabitListScreen extends ConsumerStatefulWidget {
  const HabitListScreen({Key? key}) : super(key: key);

  @override
  _HabitListScreenState createState() => _HabitListScreenState();
}

class _HabitListScreenState extends ConsumerState<HabitListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker')),
      body: const Center(child: Text('Habit List Screen')),
    );
  }
}
