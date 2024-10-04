import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/bloc/authentication_bloc.dart';
import 'package:flutter_application_1/core/screens/splash_screen.dart';
import 'package:flutter_application_1/core/themes/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/router/app_router.dart';
import 'features/settings/settings_controller.dart';
import 'generated/l10n.dart';

class App extends StatelessWidget {
  const App({required this.settingsController, required this.prefs, super.key});

  final SettingsController settingsController;
  final SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return ChangeNotifierProvider.value(
          value: settingsController,
          child: BlocProvider(
            create: (context) => AuthenticationBloc()
              ..add(
                AuthenticationStatusCheck(),
              ),
            child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state is AuthenticationSplash) {
                  router.go(SplashScreen.routeName);
                }
              },
              child: MaterialApp.router(
                routerConfig: router,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: settingsController.locale,
                supportedLocales: const [
                  Locale('en', ''),
                  Locale('ru', ''),
                ],
                onGenerateTitle: (BuildContext context) =>
                    S.of(context).appTitle,
                theme: lightTheme(),
                darkTheme: darkTheme(),
                themeMode: settingsController.themeMode,
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
        );
      },
    );
  }
}
