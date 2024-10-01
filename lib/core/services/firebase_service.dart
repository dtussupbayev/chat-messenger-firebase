import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/verify_email/screens/verify_email_screen.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/authentication_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.currentPath});
  static const routeName = '/';

  final String currentPath;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<AuthenticationBloc>().add(AuthenticationStatusCheck());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSuccess) {
          context.go(
            widget.currentPath == '/' ||
                    widget.currentPath == '/auth/sign-up' ||
                    widget.currentPath == '/auth'
                ? ChatsScreen.routeName
                : widget.currentPath,
          );
        } else if (state is AuthenticationNotVerified) {
          context.go(
            widget.currentPath == '/' ||
                    widget.currentPath == '/auth/sign-up' ||
                    widget.currentPath == '/auth'
                ? VerifyEmailScreen.routeName
                : widget.currentPath,
          );
        } else if (state is AuthenticationInitial) {
          context.go('/auth');
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
