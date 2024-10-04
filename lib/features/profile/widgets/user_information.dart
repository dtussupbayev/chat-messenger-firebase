import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile/bloc/profile_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        Text('${S.of(context).yourEmail} $email'),
        Text('${S.of(context).firstName} $firstName'),
        Text('${S.of(context).lastName} $lastName'),
        TextButton(
          onPressed: () => context.read<ProfileBloc>().add(SignOutEvent()),
          child: Text(S.of(context).signOut),
        ),
      ],
    );
  }
}
