import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/bloc/chats_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/chat_room_list_tile.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

class ChatRoomList extends StatelessWidget {
  const ChatRoomList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsBloc, ChatsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        return StreamBuilder(
          stream: state.chatRoomsStream,
          builder: (context, AsyncSnapshot snapshot) {
            return snapshot.hasData
                ? snapshot.data.docs.length > 0
                    ? ListView.builder(
                        padding: const EdgeInsets.only(top: 10),
                        itemCount: snapshot.data.docs.length,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          final DocumentSnapshot ds = snapshot.data.docs[index];
                          return ChatRoomListTile(
                            lastMessage: ds['lastMessage'],
                            lastMessageSendBy: ds['lastMessageSendBy'] ?? '',
                            chatRoomId: ds.id,
                            time: ds['lastMessageSendTs'],
                          );
                        }),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Center(
                          child: Text(
                            S.of(context).itemListEmpty,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                : const Center(
                    child: CupertinoActivityIndicator(),
                  );
          },
        );
      },
    );
  }
}
