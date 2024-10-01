import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'app.dart';
import 'features/settings/settings_controller.dart';
import 'features/settings/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAiW7dhxmPm78IKF1FhpIPr8n2S_B2smXM',
          authDomain: 'flutter-application-1-e2362.firebaseapp.com',
          projectId: 'flutter-application-1-e2362',
          storageBucket: 'flutter-application-1-e2362.appspot.com',
          messagingSenderId: '987841922201',
          appId: '1:987841922201:web:fc09e673d952ff48ba2408'),
    );
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  final prefs = await SharedPreferences.getInstance();

  final settingsController = SettingsController(
    settingsService: SettingsService(),
    prefs: prefs,
  );

  await settingsController.loadSettings();

  runApp(
    App(
      settingsController: settingsController,
      prefs: prefs,
    ),
  );
}
