import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/screens/splash_screen.dart';
import 'package:realtime_chat_app/features/app/bloc/app_bloc.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtime_chat_app/features/settings/blocs/locale_bloc/locale_bloc.dart';
import 'package:realtime_chat_app/features/settings/blocs/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/router/app_router.dart';
import '../../l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => LocaleBloc()),
      ],
      child: BlocBuilder<LocaleBloc, LocaleState>(
        builder: (context, localeState) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return BlocListener<AppBloc, AppState>(
                listener: (context, state) {
                  if (state is AppSplash) {
                    router.go(SplashScreen.routeName);
                  }
                },
                child: MaterialApp.router(
                  routerConfig: router,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  locale: localeState.locale,
                  supportedLocales: AppLocalizations.supportedLocales,
                  onGenerateTitle: (BuildContext context) => AppLocalizations.of(context).appTitle,
                  theme: lightTheme(),
                  darkTheme: darkTheme(),
                  themeMode: themeState.themeMode,
                  debugShowCheckedModeBanner: false,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
