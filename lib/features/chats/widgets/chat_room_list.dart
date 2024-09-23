import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chats/logic/chats_controller.dart';
import 'package:flutter_application_1/features/chats/widgets/chat_room_list_tile.dart';
import 'package:provider/provider.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatsController = context.watch<ChatsController>();
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
                    );
                  }),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}
