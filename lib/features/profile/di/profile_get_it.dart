import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source_impl.dart';
import 'package:realtime_chat_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/get_profile_info_use_case.dart';
import 'package:realtime_chat_app/features/profile/domain/use_cases/sign_out_use_case.dart';

void initProfileDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(auth: getIt.get(), firestore: getIt.get()),
    )
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(remoteDataSource: getIt.get<ProfileRemoteDataSource>()),
    )
    ..registerLazySingleton<GetProfileInfoUseCase>(
      () => GetProfileInfoUseCase(repository: getIt.get<ProfileRepository>()),
    )
    ..registerLazySingleton<SignOutUseCase>(
      () => SignOutUseCase(repository: getIt.get<ProfileRepository>()),
    );
}
