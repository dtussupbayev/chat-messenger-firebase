import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/settings/blocs/locale_bloc/locale_bloc.dart';
import 'package:realtime_chat_app/features/settings/blocs/theme_bloc/theme_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';
import 'package:realtimechat_uikit/uikit.dart';

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
        brightness: context.brightness == Brightness.light ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).settings)),
        body: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              backgroundColor: context.theme.scaffoldBackgroundColor,
              children: [
                CupertinoListTile(
                  title: Text(AppLocalizations.of(context).appearance),
                  trailing: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(
                      _themeModeToString(themeMode),
                      style: const TextStyle(color: CupertinoColors.activeBlue),
                    ),
                    onPressed: () => _showThemeModeBottomSheet(context, themeMode),
                  ),
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              backgroundColor: context.theme.scaffoldBackgroundColor,
              children: [
                CupertinoListTile(
                  title: Text(AppLocalizations.of(context).language),
                  trailing: CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(
                      _localeToString(context.watch<LocaleBloc>().state.locale),
                      style: const TextStyle(color: CupertinoColors.activeBlue),
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
    SelectionBottomSheet.show(
      context: context,
      items: ThemeMode.values,
      currentItem: currentMode,
      itemLabelBuilder: _themeModeToString,
      onItemSelected: (ThemeMode? value) {
        if (value != null) {
          context.read<ThemeBloc>().add(UpdateThemeEvent(value));
        }
      },
    );
  }

  void _showLocaleModeBottomSheet(BuildContext context, Locale currentLocale) {
    SelectionBottomSheet.show(
      context: context,
      items: AppLocalizations.supportedLocales,
      currentItem: currentLocale,
      itemLabelBuilder: _localeToString,
      onItemSelected: (Locale? value) {
        if (value != null) {
          context.read<LocaleBloc>().add(UpdateLocale(value));
        }
      },
    );
  }

  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return AppLocalizations.of(context).lightTheme;
      case ThemeMode.dark:
        return AppLocalizations.of(context).darkTheme;
      case ThemeMode.system:
        return AppLocalizations.of(context).systemTheme;
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
