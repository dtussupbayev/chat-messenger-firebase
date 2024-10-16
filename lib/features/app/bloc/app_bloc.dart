import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.initial()) {
    on<AppStatusChecked>(_onAppStatusChecked);
  }

  Future<void> _onAppStatusChecked(
    AppStatusChecked event,
    Emitter<AppState> emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final showWelcome = prefs.getBool('showWelcome') ?? true;
    if (showWelcome) {
      await prefs.setBool('showWelcome', false);
      emit(const AppState.onBoardingRequired());
    } else {
      await emit.onEach(
        FirebaseAuth.instance.authStateChanges(),
        onData: (user) async {
          emit(const AppState.splash());
          await Future.delayed(const Duration(milliseconds: 500));
          if (user == null) {
            emit(const AppState.unAuthenticated());
          } else if (!user.emailVerified) {
            emit(const AppState.notVerified());
          } else if (state is! AppAuthenticated) {
            emit(AppState.authenticated(user));
          }
        },
      );
    }
  }
}
