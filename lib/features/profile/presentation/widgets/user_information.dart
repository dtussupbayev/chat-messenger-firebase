import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${AppLocalizations.of(context).yourEmail} $email'),
        Text('${AppLocalizations.of(context).firstName} $firstName'),
        Text('${AppLocalizations.of(context).lastName} $lastName'),
        TextButton(
          onPressed: () => context.read<ProfileBloc>().add(const SignOutEvent()),
          child: Text(AppLocalizations.of(context).signOut),
        ),
      ],
    );
  }
}
