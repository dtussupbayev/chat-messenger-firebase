import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/chat_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'chats_app_bar_menu_button.dart';
import 'chats_controller.dart';
import 'users_search_delegate.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({
    super.key,
  });

  static const routeName = '/chats';

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final ChatsController chatsController = ChatsController();

  @override
  void initState() {
    super.initState();
    chatsController.onTheLoad();
  }

  Widget chatRoomList() {
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

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return ChangeNotifierProvider(
      create: (ctx) => chatsController,
      child: Consumer(builder: (context, chatsController, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).chats),
            actions: [
              user == null ? const SizedBox() : const SearchButton(),
              CMenuButton(user: user),
            ],
          ),
          body: user != null
              ? chatRoomList()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Center(
                    child: Text(
                      S.of(context).itemListAvailability,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
        );
      }),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        showSearch(context: context, delegate: UsersSearchDelegate());
      },
    );
  }
}

class ChatRoomListTile extends StatefulWidget {
  final String lastMessage, lastMessageSendBy, chatRoomId, myUid, time;

  final ChatsController chatsController;

  const ChatRoomListTile({
    super.key,
    required this.lastMessage,
    required this.lastMessageSendBy,
    required this.chatRoomId,
    required this.myUid,
    required this.time,
    required this.chatsController,
  });

  @override
  State<ChatRoomListTile> createState() => _ChatRoomListTileState();
}

class _ChatRoomListTileState extends State<ChatRoomListTile> {
  @override
  void initState() {
    super.initState();

    widget.chatsController.getThisUserInfo(widget.chatRoomId, widget.myUid);
    debugPrint(widget.chatsController.firstName);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatsController>(builder: (context, chatsController, _) {
      return GestureDetector(
        onTap: () {
          context.mounted
              ? Navigator.restorablePushNamed(
                  context,
                  ChatScreen.routeName,
                  arguments: [
                    chatsController.id,
                    chatsController.firstName,
                    chatsController.lastName
                  ],
                )
              : null;
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              width: 10.0,
            ),
            CircleAvatar(
              radius: 30,
              child: Text(chatsController.firstLetters),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "${chatsController.firstName} ${chatsController.lastName}",
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      widget.lastMessageSendBy == widget.myUid
                          ? Text(
                              "Вы: ",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          : const SizedBox(),
                      Flexible(
                        child: Text(
                          widget.lastMessage,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Text(
              widget.time,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ]),
        ),
      );
    });
  }
}
