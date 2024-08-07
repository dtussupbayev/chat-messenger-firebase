// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/account/account_screen.dart';
import 'package:flutter_application_1/features/settings/settings_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'chat_controller.dart';

class ChatScreen extends StatefulWidget {
  final String firstName, lastName, uid;

  const ChatScreen({
    super.key,
    required this.uid,
    required this.firstName,
    required this.lastName,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();

  static const routeName = '/chat';
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatController chatController = ChatController();

  @override
  void initState() {
    super.initState();
    chatController.onTheLoad(widget.uid);
  }

  Widget chatMessageTile(String message, bool sendByMe) {
    return Row(
      mainAxisAlignment: sendByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
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
                bottomRight: sendByMe ? const Radius.circular(0) : const Radius.circular(24),
                topRight: const Radius.circular(24),
                bottomLeft: sendByMe ? const Radius.circular(24) : const Radius.circular(0),
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

  Widget chatMessage() {
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
                      child: chatMessageTile(
                        ds["message"],
                        user?.uid == ds["sendBy"],
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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => chatController,
      child: Consumer<ChatController>(builder: (context, chatController, _) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 45),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 1.12,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: chatMessage(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                      ),
                      Text(
                        "${widget.firstName} ${widget.lastName}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == 'settings') {
                            Navigator.restorablePushNamed(context, SettingsScreen.routeName);
                          } else if (value == 'account') {
                            Navigator.restorablePushNamed(context, AccountScreen.routeName);
                          }
                        },
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem<String>(
                              value: 'account',
                              child: Text(S.of(context).account),
                            ),
                            PopupMenuItem<String>(
                              value: 'settings',
                              child: Text(S.of(context).settings),
                            ),
                          ];
                        },
                        offset: const Offset(0, kToolbarHeight - 10),
                        elevation: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        controller: chatController.messageTextEditingController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a message",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              chatController.addMessage(true);
                            },
                            child: const Icon(Icons.send_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
