import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source_impl.dart';
import 'package:realtime_chat_app/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:realtime_chat_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:realtime_chat_app/features/profile/presentation/bloc/profile_bloc.dart';

void initProfileDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(auth: getIt.get(), firestore: getIt.get()),
    )
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(remoteDataSource: getIt.get<ProfileRemoteDataSource>()),
    )
    ..registerFactory<ProfileBloc>(
          () =>
          ProfileBloc(
            profileRepository: getIt.get<ProfileRepository>(),
            firebaseAuth: getIt.get(),
          ),
    );
}
