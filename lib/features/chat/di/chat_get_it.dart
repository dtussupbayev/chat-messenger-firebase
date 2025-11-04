import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/get_message_list_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';

void initChatDependencies(GetIt getIt) {
  getIt
    ..registerLazySingleton<IChatRepository>(() => const ChatRepositoryImpl())
    ..registerLazySingleton<SendMessageUseCase>(
      () => SendMessageUseCase(iChatRepository: getIt.get<IChatRepository>()),
    )
    ..registerLazySingleton<GetMessageListUseCase>(
      () =>
          GetMessageListUseCase(iChatRepository: getIt.get<IChatRepository>()),
    )
    ..registerLazySingleton<DeleteMessageUseCase>(
      () => DeleteMessageUseCase(iChatRepository: getIt.get<IChatRepository>()),
    );
}
