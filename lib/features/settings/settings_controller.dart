import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController with ChangeNotifier {
  SettingsController({
    required this.settingsService,
    required this.prefs,
  });

  final SettingsService settingsService;
  final SharedPreferences prefs;

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  late Locale _locale;

  Locale get locale => _locale;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    await loadTheme();

    await loadLocale();

    notifyListeners();
  }

  Future<void> loadLocale() async {
    var selectedLocale = prefs.getString("selectedLocale");
    if (selectedLocale == null) {
      _locale = await settingsService.systemLocale();
      prefs.setString('selectedLocale', _locale.toString());
    } else {
      _locale = Locale(selectedLocale);
    }
  }

  Future<void> loadTheme() async {
    var selectedTheme = prefs.getString("selectedTheme");

    if (selectedTheme == null) {
      _themeMode = await settingsService.themeMode();
      prefs.setString('selectedTheme', _themeMode.toString());
    } else {
      switch (selectedTheme) {
        case "ThemeMode.dark":
          _themeMode = ThemeMode.dark;
        case "ThemeMode.light":
          _themeMode = ThemeMode.light;
        case "ThemeMode.system":
          _themeMode = ThemeMode.system;
      }
    }
  }

  void updateLocale(Locale? newLocale) {
    if (newLocale == null) return;

    if (newLocale == _locale) return;

    if (!S.delegate.supportedLocales.contains(newLocale)) return;

    _locale = newLocale;

    notifyListeners();

    prefs.setString('selectedLocale', newLocale.toString());
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    if (newThemeMode == _themeMode) return;

    _themeMode = newThemeMode;

    notifyListeners();

    prefs.setString('selectedTheme', _themeMode.toString());

    await settingsService.updateThemeMode(newThemeMode);
  }
}
