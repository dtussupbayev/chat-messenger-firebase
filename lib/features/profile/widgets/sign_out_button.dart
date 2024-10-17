import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/profile/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoaded) {
          return IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out Icon',
            onPressed: () => context.read<ProfileBloc>().add(SignOutEvent()),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
