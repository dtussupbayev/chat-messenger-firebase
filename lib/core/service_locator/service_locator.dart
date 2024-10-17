import 'package:realtime_chat_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:realtime_chat_app/features/authentication/domain/use_cases/sign_up_use_case.dart';
import 'package:realtime_chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void initDependencies() {
  serviceLocator
    ..registerLazySingleton<IAuthRepository>(
      () => const AuthRepositoryImpl(),
    )
    ..registerLazySingleton<IChatRepository>(
      () => const ChatRepositoryImpl(),
    )
    ..registerLazySingleton<LoginUseCase>(
      () =>
          LoginUseCase(iAuthRepository: serviceLocator.get<IAuthRepository>()),
    )
    ..registerLazySingleton<SignUpUseCase>(
      () =>
          SignUpUseCase(iAuthRepository: serviceLocator.get<IAuthRepository>()),
    )
    ..registerLazySingleton<ResetPasswordUseCase>(
      () => ResetPasswordUseCase(
        iAuthRepository: serviceLocator.get<IAuthRepository>(),
      ),
    )
    ..registerLazySingleton<SendMessageUseCase>(
      () => SendMessageUseCase(
        iChatRepository: serviceLocator.get<IChatRepository>(),
      ),
    )
    ..registerLazySingleton<GetMessageListUseCase>(
      () => GetMessageListUseCase(
        iChatRepository: serviceLocator.get<IChatRepository>(),
      ),
    )
    ..registerLazySingleton<DeleteMessageUseCase>(
      () => DeleteMessageUseCase(
        iChatRepository: serviceLocator.get<IChatRepository>(),
      ),
    );
}
