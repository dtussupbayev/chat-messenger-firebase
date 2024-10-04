import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Define the primary and accent colors
const Color lightThemePrimaryColor =
    Color(0xFF0277BD); // Cyan Blue for Light Theme
const Color darkThemePrimaryColor =
    Color(0xFF01579B); // Deep Blue for Dark Theme
const Color accentColor =
    Color(0xFFFFA000); // Golden Orange Accent for both themes

MaterialColor createMaterialColor(Color color) {
  final List strengths = <double>[.05];
  final Map<int, Color> swatch = {};
  final int r = color.red;
  final int g = color.green;
  final int b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(i * 0.1);
  }
  for (final strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

MaterialColor customLightPrimarySwatch =
    createMaterialColor(lightThemePrimaryColor);
MaterialColor customDarkPrimarySwatch =
    createMaterialColor(darkThemePrimaryColor);

// Light Theme
ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primarySwatch: customLightPrimarySwatch,
    primaryColor: lightThemePrimaryColor,
    hintColor: accentColor,
    scaffoldBackgroundColor: Colors.white,
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        backgroundColor: lightThemePrimaryColor,
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: lightThemePrimaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: lightThemePrimaryColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: customLightPrimarySwatch,
    ).copyWith(
      secondary: accentColor, // Set Accent color
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: lightThemePrimaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: lightThemePrimaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: lightThemePrimaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: customLightPrimarySwatch.shade900),
      ),
    ),
  );
}

// Dark Theme
ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primarySwatch: customDarkPrimarySwatch,
    primaryColor: darkThemePrimaryColor,
    hintColor: accentColor,
    scaffoldBackgroundColor: const Color(0xFF191919),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        backgroundColor: lightThemePrimaryColor,
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light, // For Android (light icons)
        statusBarBrightness: Brightness.light, // For iOS (light icons)
      ),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: darkThemePrimaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: customDarkPrimarySwatch,
      brightness: Brightness.dark,
    ).copyWith(
      secondary: accentColor, // Set Accent color for dark theme too
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: darkThemePrimaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: darkThemePrimaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: darkThemePrimaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: customDarkPrimarySwatch,
        ),
      ),
    ),
  );
}
