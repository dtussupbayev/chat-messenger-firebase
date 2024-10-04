import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/features/chat/logic/chat_controller.dart';

class ChatMessageTile extends StatelessWidget {
  const ChatMessageTile({
    super.key,
    required this.message,
    required this.messageId,
    required this.sendByMe,
  });

  final String message;
  final String messageId;
  final bool sendByMe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (_) => FirebaseFirestore.instance
          .collection('chatRooms')
          .doc(context.read<ChatController>().chatRoomId)
          .collection('messages')
          .doc(messageId)
          .delete(),
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
                message,
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
