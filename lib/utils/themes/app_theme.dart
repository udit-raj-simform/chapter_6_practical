import 'package:chapter_6_practical/values/exports.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() => ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.black87,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.white,
          elevation: 0.0,
          foregroundColor: Colors.black87,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black26,
          elevation: 3.0,
        ),
      );
}
