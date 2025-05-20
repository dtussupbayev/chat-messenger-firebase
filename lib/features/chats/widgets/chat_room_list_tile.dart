import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/themes/app_theme_extension.dart';
import 'package:realtime_chat_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:realtime_chat_app/features/chats/logic/chats_controller.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ChatRoomListTile extends StatefulWidget {
  const ChatRoomListTile({
    super.key,
    required this.lastMessage,
    required this.lastMessageSendBy,
    required this.chatRoomId,
    required this.time,
  });
  final String lastMessage;
  final String lastMessageSendBy;
  final String chatRoomId;
  final String time;

  @override
  State<ChatRoomListTile> createState() => _ChatRoomListTileState();
}

class _ChatRoomListTileState extends State<ChatRoomListTile> {
  final myUid = FirebaseAuth.instance.currentUser?.uid ?? '';
  @override
  void initState() {
    super.initState();

    context.read<ChatsController>().getThisUserInfo(widget.chatRoomId, myUid);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatsController>(
      builder: (context, chatsController, _) {
        return InkWell(
          onTap: () {
            context.goNamed(
              ChatScreen.routeName,
              pathParameters: {'chatRoomId': widget.chatRoomId},
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
                              '${widget.lastMessageSendBy == myUid ? '${S.of(context).you}: ' : ''}${widget.lastMessage}',
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyMedium
                                  ?.copyWith(
                                    color:
                                        context.colorScheme.secondary,
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
                    style: context.textTheme.bodyMedium,
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
