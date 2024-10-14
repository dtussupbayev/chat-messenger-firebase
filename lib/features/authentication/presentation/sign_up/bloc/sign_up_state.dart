part of 'sign_up_bloc.dart';

enum SignUpStatus { initial, loading, success, failure }

class SignUpState extends Equatable {
  const SignUpState({
    this.status = SignUpStatus.initial,
    this.isPasswordHidden = true,
    this.isRepeatPasswordHidden = true,
    this.errorMessage,
  });

  final SignUpStatus status;
  final bool isPasswordHidden;
  final bool isRepeatPasswordHidden;
  final String? errorMessage;

  @override
  List<Object> get props => [status, isPasswordHidden, isRepeatPasswordHidden];

  SignUpState copyWith({
    SignUpStatus? status,
    bool? isPasswordHidden,
    bool? isRepeatPasswordHidden,
    ValueGetter<String?>? errorMessage,
  }) {
    return SignUpState(
      status: status ?? this.status,
      isPasswordHidden: isPasswordHidden ?? this.isPasswordHidden,
      isRepeatPasswordHidden:
          isRepeatPasswordHidden ?? this.isRepeatPasswordHidden,
      errorMessage: errorMessage != null ? errorMessage() : this.errorMessage,
    );
  }
}
