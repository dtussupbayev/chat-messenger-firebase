import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/sign_up_use_case.dart';
import 'package:realtime_chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:realtime_chat_app/features/chats/data/datasources/chats_data_source.dart';
import 'package:realtime_chat_app/features/chats/data/repositories/chats_repository_impl.dart';
import 'package:realtime_chat_app/features/chats/domain/repositories/chats_repository.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_chat_rooms_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_user_info_use_case.dart';
import 'package:realtime_chat_app/features/users_search/data/datasources/users_search_remote_data_source.dart';
import 'package:realtime_chat_app/features/users_search/data/repositories/users_search_repository_impl.dart';
import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/create_chat_room_usecase.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/search_users_usecase.dart';

final getIt = GetIt.instance;

void initDependencies() {
  getIt
    ..registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance)
    ..registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance)
    ..registerLazySingleton<ChatsDataSource>(ChatsFirebaseDataSource.new)
    ..registerLazySingleton<IAuthRepository>(() => const AuthRepositoryImpl())
    ..registerLazySingleton<IChatRepository>(() => const ChatRepositoryImpl())
    ..registerLazySingleton<ChatsRepository>(
      () => ChatsRepositoryImpl(dataSource: getIt.get<ChatsDataSource>()),
    )
    ..registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    )
    ..registerLazySingleton<SignUpUseCase>(
      () => SignUpUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    )
    ..registerLazySingleton<ResetPasswordUseCase>(
      () => ResetPasswordUseCase(iAuthRepository: getIt.get<IAuthRepository>()),
    )
    ..registerLazySingleton<SendMessageUseCase>(
      () => SendMessageUseCase(iChatRepository: getIt.get<IChatRepository>()),
    )
    ..registerLazySingleton<GetMessageListUseCase>(
      () =>
          GetMessageListUseCase(iChatRepository: getIt.get<IChatRepository>()),
    )
    ..registerLazySingleton<DeleteMessageUseCase>(
      () => DeleteMessageUseCase(iChatRepository: getIt.get<IChatRepository>()),
    )
    ..registerLazySingleton<GetChatRoomsUseCase>(
      () => GetChatRoomsUseCase(repository: getIt.get<ChatsRepository>()),
    )
    ..registerLazySingleton<GetUserInfoUseCase>(
      () => GetUserInfoUseCase(repository: getIt.get<ChatsRepository>()),
    )
    ..registerLazySingleton<UsersSearchRemoteDataSource>(
      () => UsersSearchRemoteDataSourceImpl(
        firestore: getIt.get<FirebaseFirestore>(),
        auth: getIt.get<FirebaseAuth>(),
      ),
    )
    ..registerLazySingleton<UsersSearchRepository>(
      () => UsersSearchRepositoryImpl(
        remoteDataSource: getIt.get<UsersSearchRemoteDataSource>(),
        auth: getIt.get<FirebaseAuth>(),
      ),
    )
    ..registerLazySingleton<CreateChatRoomUseCase>(
      () =>
          CreateChatRoomUseCase(repository: getIt.get<UsersSearchRepository>()),
    )
    ..registerLazySingleton<SearchUsersUseCase>(
      () => SearchUsersUseCase(repository: getIt.get<UsersSearchRepository>()),
    );
}
