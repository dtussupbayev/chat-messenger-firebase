import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/themes/app_theme_extension.dart';
import 'package:realtime_chat_app/features/settings/blocs/theme_bloc/theme_bloc.dart';

class AppThemeSwitcher extends StatelessWidget {
  const AppThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: DayNightSwitch(
        value: context.brightness == Brightness.dark,
        onChanged: (val) {
          if (val) {
            context.read<ThemeBloc>().add(
              const UpdateThemeEvent(ThemeMode.dark),
            );
          } else {
            context.read<ThemeBloc>().add(
              const UpdateThemeEvent(ThemeMode.light),
            );
          }
        },
      ),
    );
  }
}
