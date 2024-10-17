import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/chat/domain/entites/message_entity.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:provider/provider.dart';

class ChatMessageTile extends StatelessWidget {
  const ChatMessageTile({
    super.key,
    required this.message,
    required this.sendByMe,
    required this.chatRoomId,
  });

  final MessageEntity message;
  final bool sendByMe;
  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (_) {
        context
            .read<ChatBloc>()
            .add(ChatMessageDeleted(message: message, chatRoomId: chatRoomId));
      },
      child: Row(
        mainAxisAlignment:
            sendByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: sendByMe
                    ? Theme.of(context).colorScheme.onSurfaceVariant
                    : Theme.of(context).colorScheme.onSurface,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(24),
                  bottomRight:
                      sendByMe ? Radius.zero : const Radius.circular(24),
                  topRight: const Radius.circular(24),
                  bottomLeft:
                      sendByMe ? const Radius.circular(24) : Radius.zero,
                ),
              ),
              child: Text(
                message.messageText,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
