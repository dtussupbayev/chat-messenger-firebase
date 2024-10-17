import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:realtime_chat_app/features/chat/domain/entites/message_entity.dart';
import 'package:realtime_chat_app/features/chat/presentation/widgets/chat_message_tile.dart';

class ChatMessageList extends StatelessWidget {
  const ChatMessageList({
    super.key,
    required this.messages,
    required this.chatRoomId,
  });

  final List<MessageEntity> messages;
  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: messages.length,
          reverse: true,
          itemBuilder: (context, index) {
            final MessageEntity message = messages.reversed.toList()[index];
            return ChatMessageTile(
              message: message,
              sendByMe:
                  FirebaseAuth.instance.currentUser?.uid == message.sendBy,
              chatRoomId: chatRoomId,
            );
          },
        ),
      ),
    );
  }
}
