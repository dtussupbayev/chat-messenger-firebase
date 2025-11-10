import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is AppOnBoardingRequired) {
          const WelcomeRoute().go(context);
        } else if (state is AppAuthenticated) {
          const ChatsRoute().go(context);
        } else if (state is AppNotVerified) {
          const VerifyEmailRoute().go(context);
        } else if (state is AppUnauthenticated) {
          const LoginRoute().go(context);
        }
      },
      child: const Scaffold(body: Center(child: CupertinoActivityIndicator())),
    );
  }
}
