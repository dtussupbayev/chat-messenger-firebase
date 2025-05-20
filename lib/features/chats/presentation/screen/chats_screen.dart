import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/bloc/chats_bloc.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/chat_room_list.dart';
import 'package:realtime_chat_app/features/chats/presentation/widgets/search_button.dart';
import 'package:realtime_chat_app/generated/l10n.dart';

import '../widgets/chats_app_bar_menu_button.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({
    super.key,
  });

  static const routeName = '/chats';

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return BlocProvider(
      create: (context) => ChatsBloc()..add(const LoadChats()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).chats),
          actions: [
            if (user == null) const SizedBox() else const SearchButton(),
            CMenuButton(user: user),
          ],
        ),
        body: user != null
            ? const ChatRoomList()
            : Center(
                child: Text(
                  S.of(context).itemListAvailability,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
