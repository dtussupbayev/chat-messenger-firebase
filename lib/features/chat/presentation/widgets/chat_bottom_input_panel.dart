import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/domain/entites/message_entity.dart';
import 'package:flutter_application_1/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:provider/provider.dart';

class ChatBottomInputPanel extends StatelessWidget {
  ChatBottomInputPanel({
  super.key,
    required this.chatRoomId,
  });

  final String chatRoomId;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: S.current.typeAMessage,
              suffixIcon: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                onTap: () {
                  if (!context.mounted) return;
                  final message = MessageEntity(
                    messageId: DateTime.now().millisecondsSinceEpoch.toString(),
                    messageText: controller.text,
                    sendBy: FirebaseAuth.instance.currentUser!.uid,
                    timestamp: DateTime.now(),
                  );
                  context.read<ChatBloc>().add(
                        ChatMessageSended(
                          message: message,
                          chatRoomId: chatRoomId,
                        ),
                      );
                  controller.clear();
                },
                child: const Icon(Icons.send_rounded),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
