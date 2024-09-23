import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chats/widgets/chat_room_list.dart';
import 'package:flutter_application_1/features/chats/widgets/search_button.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../widgets/chats_app_bar_menu_button.dart';
import '../logic/chats_controller.dart';

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

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return ChangeNotifierProvider(
      create: (ctx) => chatsController,
      child: Consumer<ChatsController>(builder: (context, chatsController, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).chats),
            actions: [
              user == null ? const SizedBox() : const SearchButton(),
              CMenuButton(user: user),
            ],
          ),
          body: user != null
              ? ChatRoomList(chatsController: chatsController)
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
