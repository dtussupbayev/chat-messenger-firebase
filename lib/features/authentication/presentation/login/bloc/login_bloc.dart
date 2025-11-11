import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.loginUseCase}) : super(const LoginState.initial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  final LoginUseCase loginUseCase;

  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    try {
      await loginUseCase.execute(LoginParams(email: event.email, password: event.password));
      emit(const LoginState.success());
    } catch (e) {
      emit(LoginState.failure(errorMessage: e.toString()));
    }
  }
}
