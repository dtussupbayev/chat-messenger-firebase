import 'package:firebase_auth/firebase_auth.dart';
import 'package:realtime_chat_app/features/users_search/data/datasources/users_search_remote_data_source.dart';
import 'package:realtime_chat_app/features/users_search/data/models/user_model.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class UsersSearchRepositoryImpl implements UsersSearchRepository {
  UsersSearchRepositoryImpl({
    required this.remoteDataSource,
    required this.auth,
  });

  final UsersSearchRemoteDataSource remoteDataSource;
  final FirebaseAuth auth;

  @override
  Future<List<UserEntity>> searchUsers(String query) async {
    final snapshots = await remoteDataSource.searchUsers(query);
    return snapshots.map(UserModel.fromSnapshot).toList();
  }

  @override
  Future<String> createChatRoomWithUser(UserEntity selectedUser) async {
    final currentUser = auth.currentUser;
    if (currentUser == null || currentUser.email == null) {
      throw Exception(S.current.currentUserNotFoundOrEmailIsMissing);
    }
    return remoteDataSource.createChatRoom(
      currentUser.uid,
      currentUser.email!,
      currentUser,
      selectedUser.uid,
      selectedUser.email,
    );
  }
}
