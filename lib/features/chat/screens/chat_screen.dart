import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile/screens/account_screen.dart';
import 'package:flutter_application_1/features/chat/widgets/chat_message_list.dart';
import 'package:flutter_application_1/features/settings/settings_controller.dart';
import 'package:flutter_application_1/features/settings/settings_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';
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
                    child: ChatMessageList(chatController: chatController),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        ),
                        Text(
                          '${widget.firstName} ${widget.lastName}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (value) {
                            if (value == 'settings') {
                              context.pushReplacement(
                                SettingsScreen.routeName,
                                extra: context.read<SettingsController>(),
                              );
                            } else if (value == 'account') {
                              context.pushReplacement(ProfileScreen.routeName);
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
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    alignment: Alignment.bottomCenter,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller:
                              chatController.messageTextEditingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                chatController.addMessage(sendClicked: true);
                              },
                              child: const Icon(Icons.send_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
