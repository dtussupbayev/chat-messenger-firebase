// ignore_for_file: unused_import

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/service_locator/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'app.dart';
import 'features/settings/settings_controller.dart';
import 'features/settings/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();

  final settingsController = SettingsController(
    settingsService: SettingsService(),
    prefs: prefs,
  );

  await settingsController.loadSettings();

  initDependencies();

  runApp(
    App(
      settingsController: settingsController,
      prefs: prefs,
    ),
  );
}
