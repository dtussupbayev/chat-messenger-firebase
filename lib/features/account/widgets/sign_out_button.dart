import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/account/bloc/account_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        if (state is AccountLoaded) {
          return IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out Icon',
            onPressed: () => context.read<AccountBloc>().add(SignOutEvent()),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
