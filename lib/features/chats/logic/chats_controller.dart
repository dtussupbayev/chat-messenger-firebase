import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/firestore_service.dart';

class ChatsController extends ChangeNotifier {
  Stream? chatRoomsStream;

  String? uid;

  String firstName = "", lastName = "", id = "";

  String firstLetters = '';

  getFirstLetters() {
    firstLetters = '';
    if (firstName.isNotEmpty) {
      firstLetters += firstName[0].toUpperCase();
    }
    if (lastName.isNotEmpty) {
      firstLetters += lastName[0].toUpperCase();
    }
    notifyListeners();
  }

  getTheCurrentUserInfo() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    uid = currentUser?.uid;
    notifyListeners();
  }

  onTheLoad() async {
    getTheCurrentUserInfo();

    chatRoomsStream = await FirestoreService.getChatRooms();

    notifyListeners();
  }

  Future<void> getThisUserInfo(String chatRoomId, String myUid) async {
    id = chatRoomId.replaceFirst(myUid, "").replaceFirst("_", "");
    QuerySnapshot querySnapshot = await FirestoreService.getUserInfo(id);
    firstName = "${querySnapshot.docs[0]["firstName"]}";
    lastName = "${querySnapshot.docs[0]["lastName"]}";
    getFirstLetters();
    debugPrint('firstName: $firstName');
    notifyListeners();
  }
}
