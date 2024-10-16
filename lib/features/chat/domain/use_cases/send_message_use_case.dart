import 'package:flutter_application_1/core/domain/use_case/base_use_case.dart';
import 'package:flutter_application_1/features/chat/domain/entites/message_entity.dart';
import 'package:flutter_application_1/features/chat/domain/repositories/chat_repository.dart';

class SendMessageUseCase implements BaseUseCase<SendMessageParams, void> {
  SendMessageUseCase({required this.iChatRepository});

  final IChatRepository iChatRepository;

  @override
  Future<void> execute(SendMessageParams params) async {
    await iChatRepository.sendMessage(params.message, params.chatRoomId);
  }
}

class SendMessageParams {
  const SendMessageParams({
    required this.message,
    required this.chatRoomId,
  });

  final MessageEntity message;
  final String chatRoomId;
}