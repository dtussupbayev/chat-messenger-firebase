import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/blocs/authentication_bloc.dart';
import 'package:flutter_application_1/features/authentication/presentation/verify_email/screens/verify_email_screen.dart';
import 'package:flutter_application_1/features/chats/screen/chats_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthenticationBloc>().add(AuthenticationStatusCheck());
  }

  @override
  Widget build(BuildContext context) {
    final currentPath =
        GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationFirstRun) {
          context.go('/welcome');
        }
        else if (state is AuthenticationSuccess) {
          context.go(
            currentPath == '/' ||
                    currentPath == '/auth/sign-up' ||
                    currentPath == '/auth'
                ? ChatsScreen.routeName
                : currentPath,
          );
        } else if (state is AuthenticationNotVerified) {
          context.go(
            currentPath == '/' ||
                    currentPath == '/auth/sign-up' ||
                    currentPath == '/auth'
                ? VerifyEmailScreen.routeName
                : currentPath,
          );
        } else if (state is AuthenticationNotAuthenticated) {
          context.go('/auth');
        }
      },
      child: const Scaffold(
        body: Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
