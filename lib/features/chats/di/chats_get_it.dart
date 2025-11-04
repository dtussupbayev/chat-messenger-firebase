import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/chats/data/datasources/chats_data_source.dart';
import 'package:realtime_chat_app/features/chats/data/repositories/chats_repository_impl.dart';
import 'package:realtime_chat_app/features/chats/domain/repositories/chats_repository.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_chat_rooms_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_user_info_use_case.dart';

void initChatsDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<ChatsDataSource>(ChatsFirebaseDataSource.new)
    ..registerLazySingleton<ChatsRepository>(
      () => ChatsRepositoryImpl(dataSource: getIt.get<ChatsDataSource>()),
    )
    ..registerLazySingleton<GetChatRoomsUseCase>(
      () => GetChatRoomsUseCase(repository: getIt.get<ChatsRepository>()),
    )
    ..registerLazySingleton<GetUserInfoUseCase>(
      () => GetUserInfoUseCase(repository: getIt.get<ChatsRepository>()),
    );
}
