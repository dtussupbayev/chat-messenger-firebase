import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/screens/chat_screen.dart';
import 'package:flutter_application_1/features/chats/logic/chats_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ChatRoomListTile extends StatefulWidget {
  const ChatRoomListTile({
    super.key,
    required this.lastMessage,
    required this.lastMessageSendBy,
    required this.chatRoomId,
    required this.myUid,
    required this.time,
  });
  final String lastMessage;
  final String lastMessageSendBy;
  final String chatRoomId;
  final String myUid;
  final String time;

  @override
  State<ChatRoomListTile> createState() => _ChatRoomListTileState();
}

class _ChatRoomListTileState extends State<ChatRoomListTile> {
  @override
  void initState() {
    super.initState();

    context
        .read<ChatsController>()
        .getThisUserInfo(widget.chatRoomId, widget.myUid);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatsController>(
      builder: (context, chatsController, _) {
        return InkWell(
          onTap: () {
            context.goNamed(
              ChatScreen.routeName,
              pathParameters: {'uid': chatsController.id},
              queryParameters: {
                'firstName': chatsController.firstName,
                'lastName': chatsController.lastName,
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 5.0,
            ),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Text(chatsController.firstLetters),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${chatsController.firstName} ${chatsController.lastName}',
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '${widget.lastMessageSendBy == widget.myUid ? S.of(context).you : ''}: ${widget.lastMessage}',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Text(
                    widget.time,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
