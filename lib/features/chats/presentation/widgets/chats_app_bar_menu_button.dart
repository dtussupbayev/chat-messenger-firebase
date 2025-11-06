import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:realtime_chat_app/features/settings/screens/settings_screen.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class CMenuButton extends StatelessWidget {
  const CMenuButton({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'settings') {
          context.goNamed(SettingsScreen.routeName);
        } else if (value == 'profile') {
          if ((user == null)) {
            context.push('/auth');
          } else {
            context.goNamed(ProfileScreen.routeName);
          }
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'profile',
            child: Text(AppLocalizations.of(context).profile),
          ),
          PopupMenuItem<String>(
            value: 'settings',
            child: Text(AppLocalizations.of(context).settings),
          ),
        ];
      },
      offset: const Offset(0, kToolbarHeight - 10),
      elevation: 5,
    );
  }
}
