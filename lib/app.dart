import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/account/account_screen.dart';
import 'features/authentication/reset_password/reset_password_screen.dart';
import 'features/authentication/sign_up/sign_up_screen.dart';
import 'features/chat/chat_screen.dart';
import 'generated/l10n.dart';
import 'features/chats/chats_screen.dart';
import 'features/authentication/login/login_screen.dart';
import 'features/settings/settings_controller.dart';
import 'features/settings/settings_screen.dart';
import 'services/firebase_service.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({super.key, required this.settingsController, required this.prefs});

  final SettingsController settingsController;
  final SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: settingsController.locale,
          supportedLocales: const [
            Locale('en', ''), // English, no country code,
            Locale('ru', ''), // Russian, no country code
          ],

          onGenerateTitle: (BuildContext context) => S.of(context).appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          debugShowCheckedModeBanner: false,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return returnMaterialPageRoute(routeSettings);
          },
        );
      },
    );
  }

  MaterialPageRoute<void> returnMaterialPageRoute(RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case SettingsScreen.routeName:
            return SettingsScreen(controller: settingsController);
          case ChatScreen.routeName:
            final args = routeSettings.arguments as List<String?>;
            return ChatScreen(
              uid: args[0] ?? '',
              firstName: args[1] ?? '',
              lastName: args[2] ?? '',
            );
          case LoginScreen.routeName:
            return const LoginScreen();
          case SignUpScreen.routeName:
            return const SignUpScreen();
          case ResetPasswordScreen.routeName:
            return const ResetPasswordScreen();
          case AccountScreen.routeName:
            return const AccountScreen();
          case ChatsScreen.routeName:
          default:
            return const FirebaseService();
        }
      },
    );
  }
}
