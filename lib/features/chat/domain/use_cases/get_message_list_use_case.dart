import 'package:flutter_application_1/core/domain/use_case/base_use_case.dart';
import 'package:flutter_application_1/features/chat/domain/entites/message_entity.dart';
import 'package:flutter_application_1/features/chat/domain/repositories/chat_repository.dart';

class GetMessageListUseCase
    implements BaseUseCase<String, Stream<List<MessageEntity>>> {
  GetMessageListUseCase({required this.iChatRepository});

  final IChatRepository iChatRepository;

  @override
  Stream<List<MessageEntity>> execute(String chatRoomId) {
    return iChatRepository.getMessageList(chatRoomId);
  }
}
