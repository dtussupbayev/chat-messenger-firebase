import 'package:realtime_chat_app/features/chats/data/datasources/chats_data_source.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/chat_room.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/user.dart';
import 'package:realtime_chat_app/features/chats/domain/repositories/chats_repository.dart';

class ChatsRepositoryImpl implements ChatsRepository {
  ChatsRepositoryImpl({required this.dataSource});

  final ChatsDataSource dataSource;

  @override
  Future<Stream<List<ChatRoom>>> getChatRooms() async {
    return dataSource.getChatRooms();
  }

  @override
  Future<User?> getUserInfo(String uid) async {
    return dataSource.getUserInfo(uid);
  }
}
