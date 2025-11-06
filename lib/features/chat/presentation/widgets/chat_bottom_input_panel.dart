import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realtime_chat_app/features/chat/domain/entities/message_entity.dart';
import 'package:realtime_chat_app/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class ChatBottomInputPanel extends StatelessWidget {
  ChatBottomInputPanel({super.key, required this.chatRoomId});

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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: AppLocalizations.of(context).typeAMessage,
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
                    ChatMessageSended(message: message, chatRoomId: chatRoomId),
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
