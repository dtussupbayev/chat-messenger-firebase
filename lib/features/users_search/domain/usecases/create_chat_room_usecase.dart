import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';

class CreateChatRoomUseCase implements BaseUseCase<UserEntity, Future<String>> {
  CreateChatRoomUseCase({required this.repository});

  final UsersSearchRepository repository;

  @override
  Future<String> execute(UserEntity selectedUser) async {
    return repository.createChatRoomWithUser(selectedUser);
  }
}
