// lib/features/habit_tracker/screens/add_habit_dialog.dart

import 'package:daily_helper/data/habit_tracker/models/habit.dart';
import 'package:daily_helper/data/habit_tracker/state/habits_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddHabitDialog extends StatefulWidget {
  const AddHabitDialog({super.key});

  @override
  State<AddHabitDialog> createState() => _AddHabitDialogState();
}

class _AddHabitDialogState extends State<AddHabitDialog> {
  final TextEditingController _habitNameController = TextEditingController();
  final TextEditingController _periodController = TextEditingController();
  final TextEditingController _unitController = TextEditingController();

  // NAJWAŻNIEJSZE:
  // TODO: Zacznij od tego, żeby dopisać podpowiedzi (hints) do TextFieldów
  // TODO: Zgodnie z zaleceniami chata GPT, przepisz kod tak, aby korzystać tylko z Riverpod zamiast Bloc
  // TODO: Dodaj walidację formularza - nie pozwól na dodanie pustych nazw nawyków
  // TODO: Napraw dodawanie nawyków tak, aby faktycznie działało, ponieważ po dodaniu nawyku nie pojawia się on na liście oraz wyrzuca błąd w konsoli

  // TO NA PÓŹNIEJ:
  // TODO: Dodaj wybór częstotliwości (period) z listy rozwijanej zamiast zwykłego TextField
  // TODO: Dodaj możliwość wyboru ikony dla nawyku

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Habit"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _habitNameController,
            decoration: const InputDecoration(labelText: "Habit name"),
          ),
          TextField(
            controller: _periodController,
            decoration: const InputDecoration(labelText: "Period"),
          ),
          TextField(
            controller: _unitController,
            decoration: const InputDecoration(labelText: "Unit"),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            final habitName = _habitNameController.text.trim();
            final period = _periodController.text.trim();
            final unit = _unitController.text.trim();

            if (habitName.isEmpty || period.isEmpty || unit.isEmpty) return;

            final newHabit = Habit(
              id: null,
              name: habitName,
              createdAt: DateTime.now(),
              streak: 0,
              period: period,
              isCompleted: false,
              unit: unit,
            );

            context.read<HabitsCubit>().addHabit(newHabit);

            Navigator.of(context).pop(newHabit);
          },
          child: const Text("Add"),
        ),
      ],
    );
  }
}
