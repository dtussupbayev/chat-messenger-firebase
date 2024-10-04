import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/logic/chat_controller.dart';
import 'package:flutter_application_1/features/chat/widgets/chat_message_tile.dart';

class ChatMessageList extends StatelessWidget {
  const ChatMessageList({
    super.key,
    required this.chatController,
  });

  final ChatController chatController;

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
        child: StreamBuilder(
          stream: chatController.messageStream,
          builder: (context, AsyncSnapshot snapshot) {
            final User? user = FirebaseAuth.instance.currentUser;
            return snapshot.hasData
                ? ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: snapshot.data.docs.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot message =
                          snapshot.data.docs[index];
                      debugPrint(user?.uid);
                      debugPrint('ds["sendBy"]: ${message["sendBy"]}');
                      debugPrint('ds.id: ${message.id}');
                      return ChatMessageTile(
                        message: message['message'],
                        messageId: message.id,
                        sendByMe: user?.uid == message['sendBy'],
                      );
                    },
                  )
                : const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator.adaptive(strokeWidth: 2),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
