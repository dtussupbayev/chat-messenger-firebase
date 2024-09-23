// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/logic/chat_controller.dart';
import 'package:flutter_application_1/features/chat/screens/chat_screen.dart';
import 'package:flutter_application_1/features/chat/widgets/chat_message_tile.dart';

class ChatMessageList extends StatelessWidget {
  const ChatMessageList({
    super.key,
    required this.chatController,
  });

  final ChatController chatController;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: chatController.messageStream,
        builder: (context, AsyncSnapshot snapshot) {
          User? user = FirebaseAuth.instance.currentUser;
          return snapshot.hasData
              ? ListView.builder(
                  padding: const EdgeInsets.only(bottom: 90, top: 130),
                  itemCount: snapshot.data.docs.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    debugPrint(user?.uid);
                    debugPrint('ds["sendBy"]: ${ds["sendBy"]}');
                    debugPrint('ds.id: ${ds.id}');
                    return GestureDetector(
                      onHorizontalDragStart: (_) => FirebaseFirestore.instance
                          .collection("chatRooms")
                          .doc(chatController.chatRoomId)
                          .collection("messages")
                          .doc(ds.id)
                          .delete(),
                      child: ChatMessageTile(
                        message: ds["message"],
                        sendByMe: user?.uid == ds["sendBy"],
                      ),
                    );
                  },
                )
              : const Center(
                  child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ));
        });
  }
}
