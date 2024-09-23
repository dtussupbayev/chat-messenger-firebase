import 'package:flutter/material.dart';

class ChatMessageTile extends StatelessWidget {
  const ChatMessageTile({
    super.key,
    required this.message,
    required this.sendByMe,
  });

  final String message;
  final bool sendByMe;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                bottomRight: sendByMe
                    ? const Radius.circular(0)
                    : const Radius.circular(24),
                topRight: const Radius.circular(24),
                bottomLeft: sendByMe
                    ? const Radius.circular(24)
                    : const Radius.circular(0),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        )
      ],
    );
  }
}
