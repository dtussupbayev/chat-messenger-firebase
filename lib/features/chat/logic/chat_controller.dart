import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:random_string/random_string.dart';

import '../../../core/services/firestore_service.dart';

class ChatController extends ChangeNotifier {
  TextEditingController messageTextEditingController = TextEditingController();
  Stream? messageStream;
  String? myUid;
  String? myName;
  String? myEmail;
  String? messageId;
  String? chatRoomId;
  User? user = FirebaseAuth.instance.currentUser;

  Future<void> onTheLoad(String uidTo) async {
    chatRoomId = FirestoreService.getChatRoomIdbyUid(uidTo, user!.uid);
    await getAndSetMessages(chatRoomId!);
    notifyListeners();
  }

  Future<void> getAndSetMessages(String chatRoomId) async {
    messageStream = await FirestoreService.getChatRoomMessages(chatRoomId);
    notifyListeners();
  }

  Future<void> addMessage({required bool sendClicked}) async {
    if (messageTextEditingController.text != '') {
      final String message = messageTextEditingController.text;
      messageTextEditingController.text = '';

      final DateTime now = DateTime.now();
      final String formattedDate = DateFormat('h:mma').format(now);

      final User? user = FirebaseAuth.instance.currentUser;

      final Map<String, dynamic> messageInfoMap = {
        'message': message,
        'sendBy': user!.uid,
        'ts': formattedDate,
        'time': FieldValue.serverTimestamp(),
      };

      messageId ??= randomAlphaNumeric(10);

      await FirestoreService.addMessage(chatRoomId!, messageId!, messageInfoMap)
          .then((value) {
        final Map<String, dynamic> lastMessageInfoMap = {
          'lastMessage': message,
          'lastMessageSendTs': formattedDate,
          'time': FieldValue.serverTimestamp(),
          'lastMessageSendBy': user.uid,
        };
        FirestoreService.updateLastMessageSended(
          chatRoomId!,
          lastMessageInfoMap,
        );
        if (sendClicked) {
          messageId = null;
        }
      });
      await getAndSetMessages(chatRoomId!);

      notifyListeners();
    }
  }
}
