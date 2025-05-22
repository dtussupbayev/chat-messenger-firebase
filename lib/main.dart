import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/app/app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final appDir = await getApplicationDocumentsDirectory();
  debugPrint(appDir.toString());

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationDocumentsDirectory()).path,
          ),
  );

  initDependencies();

  if (kDebugMode) {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  runApp(const App());
}
