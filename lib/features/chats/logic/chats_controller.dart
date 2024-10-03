import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/firestore_service.dart';

class ChatsController extends ChangeNotifier {
  Stream? chatRoomsStream;

  String? uid;

  String firstName = '';
  String lastName = '';
  String id = '';

  String firstLetters = '';

  void getFirstLetters() {
    firstLetters = '';
    if (firstName.isNotEmpty) {
      firstLetters += firstName[0].toUpperCase();
    }
    if (lastName.isNotEmpty) {
      firstLetters += lastName[0].toUpperCase();
    }
    notifyListeners();
  }

  void getTheCurrentUserInfo() {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    uid = currentUser?.uid;
    notifyListeners();
  }

  Future<void> onTheLoad() async {
    getTheCurrentUserInfo();

    chatRoomsStream = await FirestoreService.getChatRooms();

    notifyListeners();
  }

  Future<void> getThisUserInfo(String chatRoomId, String myUid) async {
    id = chatRoomId.replaceFirst(myUid, '').replaceFirst('_', '');
    final QuerySnapshot querySnapshot = await FirestoreService.getUserInfo(id);
    if (querySnapshot.docs.isNotEmpty) {
      firstName = "${querySnapshot.docs[0]["firstName"]}";
      lastName = "${querySnapshot.docs[0]["lastName"]}";
    }
    getFirstLetters();
    debugPrint('firstName: $firstName');
    notifyListeners();
  }
}
