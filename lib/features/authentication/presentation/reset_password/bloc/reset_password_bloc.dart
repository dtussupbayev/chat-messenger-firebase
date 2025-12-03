import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({required IAuthRepository authRepository})
    : _authRepository = authRepository,
      super(const ResetPasswordState.initial()) {
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
  }

  final IAuthRepository _authRepository;

  Future<void> _onResetPasswordSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(const ResetPasswordState.loading());
    try {
      await _authRepository.sendResetPasswordEmail(event.email);
      emit(const ResetPasswordState.success());
    } catch (e) {
      emit(ResetPasswordState.failure(errorMessage: e.toString()));
    }
  }
}
