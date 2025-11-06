import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/users_search/data/datasources/users_search_remote_data_source.dart';
import 'package:realtime_chat_app/features/users_search/data/repositories/users_search_repository_impl.dart';
import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/create_chat_room_usecase.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/search_users_usecase.dart';
import 'package:realtime_chat_app/features/users_search/presentation/bloc/users_search_bloc.dart';

void initUsersSearchDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<UsersSearchRemoteDataSource>(
      () => UsersSearchRemoteDataSourceImpl(firestore: getIt.get(), auth: getIt.get()),
    )
    ..registerLazySingleton<UsersSearchRepository>(
      () => UsersSearchRepositoryImpl(
        remoteDataSource: getIt.get<UsersSearchRemoteDataSource>(),
        auth: getIt.get(),
      ),
    )
    ..registerLazySingleton<CreateChatRoomUseCase>(
      () => CreateChatRoomUseCase(repository: getIt.get<UsersSearchRepository>()),
    )
    ..registerLazySingleton<SearchUsersUseCase>(
      () => SearchUsersUseCase(repository: getIt.get<UsersSearchRepository>()),
    )
    ..registerFactory<UsersSearchBloc>(
      () => UsersSearchBloc(
          searchUsersUseCase: getIt.get<SearchUsersUseCase>(),
          createChatRoomUseCase: getIt.get<CreateChatRoomUseCase>()),
    );
}
