import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';

import 'web_platform.dart';

class SettingsService {
  SettingsService();

  Future<ThemeMode> themeMode() async => ThemeMode.system;
  Future<Locale> systemLocale() async {
    return S.delegate.supportedLocales.contains(Locale(Platform.localeName))
        ? Locale(Platform.localeName)
        : const Locale('ru', '');
  }

  String getSystemLocale() {
    if (kIsWeb) {
      return getWebLocale() ?? '';
    } else {
      return Platform.localeName;
    }
  }

  Future<void> updateThemeMode(ThemeMode theme) async {}
}
