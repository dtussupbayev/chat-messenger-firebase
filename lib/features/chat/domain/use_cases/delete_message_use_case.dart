import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/chat/domain/entites/message_entity.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';

class DeleteMessageUseCase implements BaseUseCase<DeleteMessageParams, void> {
  DeleteMessageUseCase({required this.iChatRepository});

  final IChatRepository iChatRepository;
  @override
  Future<void> execute(DeleteMessageParams params) async {
    await iChatRepository.deleteMessage(params.message, params.chatRoomId);
  }
}

class DeleteMessageParams {
  DeleteMessageParams({required this.message, required this.chatRoomId});

  final MessageEntity message;
  final String chatRoomId;
}
