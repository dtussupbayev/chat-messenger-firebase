import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/chat_room.dart';
import 'package:realtime_chat_app/features/chats/domain/repositories/chats_repository.dart';

class GetChatRoomsUseCase
    implements BaseUseCase<NoParams?, Future<Stream<List<ChatRoom>>>> {
  GetChatRoomsUseCase({required this.repository});

  final ChatsRepository repository;

  @override
  Future<Stream<List<ChatRoom>>> execute(NoParams? params) {
    return repository.getChatRooms();
  }
}
