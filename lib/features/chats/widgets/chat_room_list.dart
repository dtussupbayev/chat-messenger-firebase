import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chats/logic/chats_controller.dart';
import 'package:flutter_application_1/features/chats/widgets/chat_room_list_tile.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({
    super.key,
    required this.chatsController,
  });

  final ChatsController chatsController;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: chatsController.chatRoomsStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return ChatRoomListTile(
                      lastMessage: ds["lastMessage"],
                      lastMessageSendBy: ds["lastMessageSendBy"] ?? "",
                      chatRoomId: ds.id,
                      myUid: chatsController.uid ?? "",
                      time: ds["lastMessageSendTs"],
                      chatsController: chatsController,
                    );
                  }),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}
