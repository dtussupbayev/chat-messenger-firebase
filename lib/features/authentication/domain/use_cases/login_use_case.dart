import 'package:flutter_application_1/core/domain/use_case/base_use_case.dart';
import 'package:flutter_application_1/features/authentication/domain/repositories/auth_repository.dart';

class LoginParams {
  const LoginParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}

class LoginUseCase implements BaseUseCase<LoginParams, void> {
  LoginUseCase({required this.iAuthRepository});

  final IAuthRepository iAuthRepository;
  @override
  Future<void> execute(LoginParams params) async {
    try {
      await iAuthRepository.signInWithEmailAndPassword(
        params.email,
        params.password,
      );
    } catch (e) {
      rethrow;
    }
  }
}