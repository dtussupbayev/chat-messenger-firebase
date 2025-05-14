import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/settings/blocs/locale_bloc/locale_bloc.dart';
import 'package:realtime_chat_app/features/settings/blocs/theme_bloc/theme_bloc.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeBloc>().state.themeMode;

    return CupertinoTheme(
      data: CupertinoThemeData(
        brightness: Theme.of(context).brightness == Brightness.light
            ? Brightness.light
            : Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).settings),
        ),
        body: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).appearance),
                  trailing: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(
                      _themeModeToString(themeMode),
                      style: const TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                    onPressed: () =>
                        _showThemeModeBottomSheet(context, themeMode),
                  ),
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              children: [
                CupertinoListTile(
                  title: Text(S.of(context).language),
                  trailing: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(
                      _localeToString(context.watch<LocaleBloc>().state.locale),
                      style: const TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                    onPressed: () => _showLocaleModeBottomSheet(
                      context,
                      context.read<LocaleBloc>().state.locale,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showThemeModeBottomSheet(BuildContext context, ThemeMode currentMode) {
    showModalBottomSheet<void>(
      showDragHandle: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: ThemeMode.values.map((mode) {
            return RadioListTile<ThemeMode>(
              title: Text(_themeModeToString(mode)),
              value: mode,
              groupValue: currentMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  context.read<ThemeBloc>().add(UpdateThemeEvent(value));
                  Navigator.pop(context);
                }
              },
            );
          }).toList(),
        );
      },
    );
  }

  void _showLocaleModeBottomSheet(BuildContext context, Locale currentLocale) {
    showModalBottomSheet<void>(
      showDragHandle: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: S.delegate.supportedLocales.map((locale) {
            return RadioListTile<Locale>(
              title: Text(_localeToString(locale)),
              value: locale,
              groupValue: currentLocale,
              onChanged: (Locale? locale) {
                if (locale != null) {
                  context.read<LocaleBloc>().add(UpdateLocale(locale));
                  Navigator.pop(context);
                }
              },
            );
          }).toList(),
        );
      },
    );
  }

  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return S.of(context).lightTheme;
      case ThemeMode.dark:
        return S.of(context).darkTheme;
      case ThemeMode.system:
        return S.of(context).systemTheme;
    }
  }

  String _localeToString(Locale locale) {
    switch (locale.toString()) {
      case 'en':
        return 'English';
      case 'ru':
        return 'Русский';
      default:
        return locale.toString();
    }
  }
}
