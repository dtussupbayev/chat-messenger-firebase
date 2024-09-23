import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  final SharedPreferences prefs;

  SettingsService({required this.prefs});

  Future<ThemeMode> themeMode() async => ThemeMode.system;
  Future<Locale> systemLocale() async {
    return S.delegate.supportedLocales.contains(Locale(Platform.localeName))
        ? Locale(Platform.localeName)
        : const Locale('ru', '');
  }

  Future<void> updateThemeMode(ThemeMode theme) async {}
}
