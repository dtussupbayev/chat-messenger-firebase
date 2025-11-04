import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/sign_up_use_case.dart';

void initAuthDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<IAuthRepository>(() => const AuthRepositoryImpl())
    ..registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    )
    ..registerLazySingleton<SignUpUseCase>(
      () => SignUpUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    )
    ..registerLazySingleton<ResetPasswordUseCase>(
      () => ResetPasswordUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    );
}
