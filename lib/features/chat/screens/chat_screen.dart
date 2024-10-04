import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/widgets/chat_bottom_input_panel.dart';
import 'package:flutter_application_1/features/chat/widgets/chat_message_list.dart';
import 'package:provider/provider.dart';

import '../logic/chat_controller.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.uid,
    required this.firstName,
    required this.lastName,
  });
  final String firstName;
  final String lastName;
  final String uid;

  @override
  State<ChatScreen> createState() => _ChatScreenState();

  static const routeName = 'chat';
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatController chatController = ChatController();

  @override
  void initState() {
    super.initState();
    chatController.onTheLoad(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => chatController,
      child: Consumer<ChatController>(
        builder: (context, chatController, _) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                '${widget.firstName} ${widget.lastName}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            body: Column(
              children: [
                ChatMessageList(chatController: chatController),
                const ChatBottomInputPanel(),
              ],
            ),
          );
        },
      ),
    );
  }
}
