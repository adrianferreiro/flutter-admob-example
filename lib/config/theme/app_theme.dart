import 'package:flutter/material.dart';

class AppTheme {
  final colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.green, // Cambié el color base a verde
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: const Color.fromARGB(31, 140, 135, 135),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black87,
      foregroundColor: Colors.white,
    ),
    // Personalización del color de los botones
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Verde para los botones
        foregroundColor: Colors.white, // Blanco para el texto
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.green, // Verde para los TextButton
      ),
    ),
    // Personalización de los iconos y otros elementos que usen color
    iconTheme: IconThemeData(
      color: Colors.green, // Verde para los iconos
    ),

    // Personalización del color dorado para elementos clave
    // Puedo añadir dorado en algunos elementos visuales
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.amber, // Dorado para el fondo de SnackBar
    ),
  );
}
