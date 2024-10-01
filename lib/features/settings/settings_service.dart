import 'dart:io';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class SettingsService {
  SettingsService();

  Future<ThemeMode> themeMode() async => ThemeMode.system;
  Future<Locale> systemLocale() async {
    return S.delegate.supportedLocales.contains(Locale(getSystemLocale()))
        ? Locale(getSystemLocale())
        : const Locale('ru', '');
  }

  String getSystemLocale() {
    if (kIsWeb) {
      // Используем navigator.language для получения языка в Web
      return html.window.navigator.language;
    } else {
      // Используем Platform.localeName для других платформ
      return Platform.localeName;
    }
  }

  Future<void> updateThemeMode(ThemeMode theme) async {}
}
