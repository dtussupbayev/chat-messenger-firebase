import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';

class SearchUsersUseCase
    implements BaseUseCase<String, Future<List<UserEntity>>> {
  SearchUsersUseCase({required this.repository});

  final UsersSearchRepository repository;

  @override
  Future<List<UserEntity>> execute(String query) async {
    if (query.trim().isEmpty) {
      return [];
    }
    return repository.searchUsers(query);
  }
}
