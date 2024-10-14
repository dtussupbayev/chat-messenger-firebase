import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationStatusCheck>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final showWelcome = prefs.getBool('showWelcome') ?? true;
      if (showWelcome) {
        await prefs.setBool('showWelcome', false);
        emit(AuthenticationFirstRun());
      } else {
        await emit.onEach(
          FirebaseAuth.instance.authStateChanges(),
          onData: (user) async {
            this.user = user;
            emit(AuthenticationSplash());
            await Future.delayed(const Duration(milliseconds: 500), () {
              if (user == null) {
                emit(AuthenticationNotAuthenticated());
              } else if (!user.emailVerified) {
                emit(AuthenticationNotVerified());
              } else if (state is! AuthenticationSuccess) {
                emit(AuthenticationSuccess(user));
              }
            });
          },
        );
      }
    });
  }
  User? user;
}
