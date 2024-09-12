import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirestoreService {
  static Future<void> addUserDetails(
      Map<String, dynamic> userInfoMap, String uid) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(userInfoMap);
  }

  static List<String> generateSearchKeywords(
      String firstname, String lastname) {
    String lowercaseFirstName = firstname.toLowerCase();
    String lowercaseLastName = lastname.toLowerCase();

    Set<String> substrings = {};

    substrings.add(lowercaseFirstName[0]);
    for (int i = 1; i <= lowercaseFirstName.length; i++) {
      substrings.add(lowercaseFirstName.substring(0, i));
    }

    substrings.add(lowercaseLastName[0]);
    for (int i = 1; i <= lowercaseLastName.length; i++) {
      substrings.add(lowercaseLastName.substring(0, i));
    }

    return substrings.toList();
  }

  static Future<QuerySnapshot> searchUsers(String query) async {
    String lowercaseQuery = query.toLowerCase();

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    QuerySnapshot querySnapshot = await users
        .where('searchKeywords', arrayContains: lowercaseQuery)
        .get();

    return querySnapshot;
  }

  static Future<void> createChatRoom(
      String chatRoomId, Map<String, dynamic> chatRoomInfoMap) async {
    final snapshot = await FirebaseFirestore.instance
        .collection("chatRooms")
        .doc(chatRoomId)
        .get();
    if (snapshot.exists) {
      return;
    } else {
      return FirebaseFirestore.instance
          .collection("chatRooms")
          .doc(chatRoomId)
          .set(chatRoomInfoMap);
    }
  }

  static Future<void> addMessage(String chatRoomId, String messageId,
      Map<String, dynamic> messageInfoMap) async {
    return FirebaseFirestore.instance
        .collection("chatRooms")
        .doc(chatRoomId)
        .collection("messages")
        .doc(messageId)
        .set(messageInfoMap);
  }

  static Future<void> updateLastMessageSended(
      String chatRoomId, Map<String, dynamic> lastMessageInfoMap) {
    return FirebaseFirestore.instance
        .collection("chatRooms")
        .doc(chatRoomId)
        .set(lastMessageInfoMap, SetOptions(merge: true));
  }

  static Future<Stream<QuerySnapshot>> getChatRoomMessages(
      String chatRoomId) async {
    return FirebaseFirestore.instance
        .collection("chatRooms")
        .doc(chatRoomId)
        .collection("messages")
        .orderBy("time", descending: true)
        .snapshots();
  }

  static Future<Stream<QuerySnapshot>> getChatRooms() async {
    User? user = FirebaseAuth.instance.currentUser;
    debugPrint(user?.email);

    Stream<QuerySnapshot> sn = FirebaseFirestore.instance
        .collection("chatRooms")
        .orderBy("time", descending: true)
        .where("users", arrayContains: user?.email)
        .snapshots();
    debugPrint("sn: $sn");
    return sn;
  }

  static Future<QuerySnapshot> getUserInfo(String uid) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .where("uid", isEqualTo: uid)
        .get();
  }

  static String getChatRoomIdbyUid(String uidTo, String s) {
    User? user = FirebaseAuth.instance.currentUser;

    String currentUserUid = user!.uid;
    if (currentUserUid.codeUnitAt(0) > uidTo.codeUnitAt(0)) {
      return "${currentUserUid}_$uidTo";
    }
    return "${uidTo}_$currentUserUid";
  }
}
