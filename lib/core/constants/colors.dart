import 'package:flutter/material.dart';

class AppColors {
  // Główne kolory aplikacji
  static const Color primary = Color(
    0xFF9CAF88,
  ); // dla przycisków, bottom bar tło
  static const Color accent = Color(
    0xFF7B8C5F,
  ); // akcenty, np. oznaczenie wykonanych nawyków
  static const Color background = Color(0xFFFAFAF5); // tło całej aplikacji
  static const Color textPrimary = Color(0xFF2F2F2F); // główny tekst
  static const Color textSecondary = Color(0xFF666666); // mniej ważny tekst

  // Kolory dla BottomNavigationBar
  static const Color bottomBarBackground = primary; // tło bottom bara
  static const Color bottomBarIconActive = Colors.white; // aktywne ikony
  static const Color bottomBarIconInactive = Color(
    0xFFF2EFEA,
  ); // nieaktywne ikony (jasnoszare)

  // Kolory akcji / stanu
  static const Color success = Color(
    0xFF4CAF50,
  ); // zielony np. wykonane zadanie
  static const Color error = Color(0xFFFF6B6B); // czerwony np. usuwanie / błąd
  static const Color warning = Color(0xFFFFC107); // żółty np. alert / uwaga
  static const Color info = Color(
    0xFF2196F3,
  ); // niebieski np. wskazówki / informacje

  // Dodatkowe kolory (opcjonalne)
  static const Color divider = Color(0xFFE0E0E0); // linie podziału w listach
  static const Color cardBackground = Colors.white; // tło kart
}
