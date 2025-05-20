import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realtime_chat_app/core/themes/app_theme_extension.dart';
import 'package:realtime_chat_app/features/chat/domain/entities/message_entity.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';

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
                    ? context.colorScheme.onSurfaceVariant
                    : context.colorScheme.onSurface,
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
                  color: context.colorScheme.surface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
