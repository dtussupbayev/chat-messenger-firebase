import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/generated/l10n.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email.trim(),
        password: event.password.trim(),
      );
      emit(state.copyWith(status: LoginStatus.success));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential' || e.code == 'wrong-password') {
        emit(state.copyWith(
          status: LoginStatus.failure,
          errorMessage: S.current.wrongEmailOrPasswordSnackBar,
        ));
      } else {
        emit(state.copyWith(
          status: LoginStatus.failure,
          errorMessage: S.current.undefinedError,
        ));
      }
    }
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));
  }
}