import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.loginUseCase}) : super(const LoginState()) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  final LoginUseCase loginUseCase;

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      await loginUseCase.execute(
        LoginParams(email: event.email, password: event.password),
      );
      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(
        state.copyWith(status: LoginStatus.failure, errorMessage: e.toString),
      );
    }
  }

  void _onTogglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        status: LoginStatus.initial,
        isPasswordHidden: !state.isPasswordHidden,
      ),
    );
  }
}
