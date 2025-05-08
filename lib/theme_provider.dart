import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  Color _pinkBackground = Colors.pink[100]!;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;
  Color get pinkBackground => _pinkBackground;

  ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: _pinkBackground,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: _pinkBackground,
        ),
      );

  ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        cardColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
        ),
      );

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> toggleTheme(bool isDark) async {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', isDark);
    notifyListeners();
  }
}
