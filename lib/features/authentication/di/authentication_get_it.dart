import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';

void initAuthDependencies(GetIt getIt) {
  getIt.registerLazySingleton<IAuthRepository>(() => const AuthRepositoryImpl());
}
