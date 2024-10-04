import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/logic/chat_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:provider/provider.dart';

class ChatBottomInputPanel extends StatelessWidget {
  const ChatBottomInputPanel({
    super.key,
  });

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
            controller:
                context.read<ChatController>().messageTextEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: S.current.typeAMessage,
              suffixIcon: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                onTap: () {
                  if (!context.mounted) return;
                  context.read<ChatController>().addMessage(sendClicked: true);
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
