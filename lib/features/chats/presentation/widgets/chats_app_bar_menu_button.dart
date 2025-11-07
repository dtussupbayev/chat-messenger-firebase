import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class CMenuButton extends StatelessWidget {
  const CMenuButton({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'settings') {
          const SettingsRoute().go(context);
        } else if (value == 'profile') {
          if ((user == null)) {
            const LoginRoute().push(context);
          } else {
            const ProfileRoute().go(context);
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
