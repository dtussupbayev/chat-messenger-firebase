import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/screens/splash_screen.dart';
import 'package:flutter_application_1/features/app/bloc/app_bloc.dart';
import 'package:flutter_application_1/core/themes/app_themes.dart';
import 'package:flutter_application_1/features/settings/blocs/locale_bloc/locale_bloc.dart';
import 'package:flutter_application_1/features/settings/blocs/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../core/router/app_router.dart';
import '../../generated/l10n.dart';

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
                child: DevicePreview(
                  enabled: !kReleaseMode,
                  builder: (context) => MaterialApp.router(
                    // ignore: deprecated_member_use
                    useInheritedMediaQuery: true,
                    builder: DevicePreview.appBuilder,
                    routerConfig: router,
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: localeState.locale,
                    supportedLocales: S.delegate.supportedLocales,
                    onGenerateTitle: (BuildContext context) =>
                        S.of(context).appTitle,
                    theme: lightTheme(),
                    darkTheme: darkTheme(),
                    themeMode: themeState.themeMode,
                    debugShowCheckedModeBanner: false,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
