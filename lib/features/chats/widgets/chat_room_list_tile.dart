import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/chat_screen.dart';
import 'package:flutter_application_1/features/chats/logic/chats_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

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
              ? context.pushNamed(
                  ChatScreen.routeName,
                  pathParameters: {'uid': chatsController.id},
                  queryParameters: {
                    'firstName': chatsController.firstName,
                    'lastName': chatsController.lastName
                  },
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
