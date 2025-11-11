part of 'sign_up_bloc.dart';

@freezed
sealed class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.success() = SignUpSuccess;
  const factory SignUpState.failure({required String errorMessage}) = SignUpFailure;
}
