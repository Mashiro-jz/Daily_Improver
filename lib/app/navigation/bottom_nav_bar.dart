import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class DailyHelperBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const DailyHelperBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: AppColors.primary,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          label: 'Habits',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: 'To-Do'),
        BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: 'Replay'),
      ],
    );
  }
}
