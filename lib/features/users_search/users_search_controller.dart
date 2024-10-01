import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/services/firestore_service.dart';

class UsersSearchController extends ChangeNotifier {
  User? user = FirebaseAuth.instance.currentUser;

  String getFirstLetters(String firstName, String lastName) {
    String firstLetters = '';
    if (firstName.isNotEmpty) {
      firstLetters += firstName[0].toUpperCase();
    }
    if (lastName.isNotEmpty) {
      firstLetters += lastName[0].toUpperCase();
    }
    return firstLetters;
  }

  Map<String, dynamic> getUserData(AsyncSnapshot<QuerySnapshot<Object?>> snapshot, int index) {
    return snapshot.data!.docs[index].data()! as Map<String, dynamic>;
  }

  Future<void> createChatRoom(String uidTo, String emailTo) async {
    final chatRoomId = FirestoreService.getChatRoomIdbyUid(uidTo, user!.uid);

    final firstUserEmail = user!.email;
    final secondUserEmail = emailTo;

    final Map<String, dynamic> chatRoomInfoMap = {
      'users': [firstUserEmail, secondUserEmail],
      'lastMessage': '',
      'lastMessageSendTs': DateFormat('h:mma').format(DateTime.now()),
      'time': FieldValue.serverTimestamp(),
      'lastMessageSendBy': '',
    };

    await FirestoreService.createChatRoom(chatRoomId, chatRoomInfoMap);
  }
}
