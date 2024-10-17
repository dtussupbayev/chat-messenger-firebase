import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';

class SignUpParams {
  const SignUpParams({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;
}

class SignUpUseCase implements BaseUseCase<SignUpParams, void> {
  SignUpUseCase({
    required this.iAuthRepository,
  });
  final IAuthRepository iAuthRepository;

  @override
  Future<void> execute(SignUpParams params) async {
    await iAuthRepository.createUserWithEmailAndPassword(
      params.email,
      params.password,
      params.firstName,
      params.lastName,
    );
  }
}
