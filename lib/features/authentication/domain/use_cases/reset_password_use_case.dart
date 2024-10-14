import 'package:flutter_application_1/core/domain/use_case/base_use_case.dart';
import 'package:flutter_application_1/features/authentication/domain/repositories/auth_repository.dart';

class ResetPasswordParams {
  const ResetPasswordParams({required this.email});

  final String email;
}

class ResetPasswordUseCase implements BaseUseCase<ResetPasswordParams, void> {
  const ResetPasswordUseCase({required this.iAuthRepository});

  final IAuthRepository iAuthRepository;

  @override
  Future<void> execute(ResetPasswordParams params) async {
    await iAuthRepository.sendResetPasswordEmail(params.email);
  }
}
