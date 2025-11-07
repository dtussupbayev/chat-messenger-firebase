import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/core/router/app_router.dart';
import 'package:realtime_chat_app/features/app/bloc/app_bloc.dart';

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
    context.read<AppBloc>().add(const AppStatusChecked());
  }

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is AppOnBoardingRequired) {
          const WelcomeRoute().go(context);
        } else if (state is AppAuthenticated) {
          (currentPath == '/' || currentPath == '/auth/sign-up' || currentPath == '/auth')
              ? const ChatsRoute().go(context)
              : context.go(currentPath);
        } else if (state is AppNotVerified) {
          (currentPath == '/' || currentPath == '/auth/sign-up' || currentPath == '/auth')
              ? const VerifyEmailRoute().go(context)
              : context.go(currentPath);
        } else if (state is AppUnauthenticated) {
          const LoginRoute().go(context);
        }
      },
      child: const Scaffold(body: Center(child: CupertinoActivityIndicator())),
    );
  }
}
