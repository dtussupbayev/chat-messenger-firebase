import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realtime_chat_app/core/di/get_it.dart';
import 'package:realtime_chat_app/features/app/app.dart';
import 'package:realtime_chat_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseFirestore.setLoggingEnabled(true);

  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  debugPrint('Application Documents Directory: ${appDocumentsDirectory.path}');

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(appDocumentsDirectory.path),
  );

  initDependencies();

  runApp(const App());
}
