import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:random_string/random_string.dart';

import '../../../core/services/firestore_service.dart';

class ChatController extends ChangeNotifier {
  TextEditingController messageTextEditingController = TextEditingController();
  Stream? messageStream;
  String? myUid, myName, myEmail, messageId, chatRoomId;
  User? user = FirebaseAuth.instance.currentUser;

  onTheLoad(String uidTo) async {
    chatRoomId = FirestoreService.getChatRoomIdbyUid(uidTo, user!.uid);
    await getAndSetMessages(chatRoomId!);
    notifyListeners();
  }

  Future<void> getAndSetMessages(String chatRoomId) async {
    messageStream = await FirestoreService.getChatRoomMessages(chatRoomId);
    notifyListeners();
  }

  addMessage(bool sendClicked) async {
    if (messageTextEditingController.text != "") {
      String message = messageTextEditingController.text;
      messageTextEditingController.text = "";

      DateTime now = DateTime.now();
      String formattedDate = DateFormat('h:mma').format(now);

      User? user = FirebaseAuth.instance.currentUser;

      Map<String, dynamic> messageInfoMap = {
        "message": message,
        "sendBy": user!.uid,
        "ts": formattedDate,
        "time": FieldValue.serverTimestamp(),
      };

      messageId ??= randomAlphaNumeric(10);

      FirestoreService.addMessage(chatRoomId!, messageId!, messageInfoMap).then((value) {
        Map<String, dynamic> lastMessageInfoMap = {
          "lastMessage": message,
          "lastMessageSendTs": formattedDate,
          "time": FieldValue.serverTimestamp(),
          "lastMessageSendBy": user.uid
        };
        FirestoreService.updateLastMessageSended(chatRoomId!, lastMessageInfoMap);
        if (sendClicked) {
          messageId = null;
        }
      });
      await getAndSetMessages(chatRoomId!);

      notifyListeners();
    }
  }
}
