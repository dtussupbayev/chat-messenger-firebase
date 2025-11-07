import 'package:get_it/get_it.dart';
import 'package:realtime_chat_app/core/di/core_di.dart';
import 'package:realtime_chat_app/features/authentication/di/authentication_get_it.dart';
import 'package:realtime_chat_app/features/chat/di/chat_get_it.dart';
import 'package:realtime_chat_app/features/chats/di/chats_get_it.dart';
import 'package:realtime_chat_app/features/profile/di/profile_get_it.dart';
import 'package:realtime_chat_app/features/users_search/di/users_search_get_it.dart';

final getIt = GetIt.instance;

void initDependencies() {
  initCoreDependencies(getIt);
  initAuthDependencies(getIt);
  initChatDependencies(getIt);
  initChatsDependencies(getIt);
  initUsersSearchDependencies(getIt);
  initProfileDependencies(getIt);
}
