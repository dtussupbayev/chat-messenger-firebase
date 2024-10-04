import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/settings/settings_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppThemeSwitcher extends StatelessWidget {
  const AppThemeSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: DayNightSwitch(
        value: Theme.of(context).brightness == Brightness.dark,
        onChanged: (val) {
          if (val) {
            context.read<SettingsController>().updateThemeMode(ThemeMode.dark);
          } else {
            context.read<SettingsController>().updateThemeMode(ThemeMode.light);
          }
        },
      ),
    );
  }
}
