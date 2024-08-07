import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  final SharedPreferences prefs;

  SettingsService({required this.prefs});

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;
  Future<Locale> systemLocale() async {
    return S.delegate.supportedLocales.contains(Locale(Platform.localeName))
        ? Locale(Platform.localeName)
        : const Locale('ru', '');
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }
}
