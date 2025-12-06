import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';

void initChatDependencies(GetIt getIt) {
  getIt.registerLazySingleton<IChatRepository>(() => const ChatRepositoryImpl());
}
