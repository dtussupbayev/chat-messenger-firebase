import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/account/bloc/account_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInformation extends StatelessWidget {
  final String email;
  final String firstName;
  final String lastName;
  const UserInformation({
    super.key,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${S.of(context).yourEmail}$email'),
        Text('${S.of(context).firstName}$firstName'),
        Text('${S.of(context).lastName}$lastName'),
        TextButton(
          onPressed: () => context.read<AccountBloc>().add(SignOutEvent()),
          child: Text(S.of(context).signOut),
        ),
      ],
    );
  }
}
