import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirestoreService {
  static Future<void> addUserDetails(
    Map<String, dynamic> userInfoMap,
    String uid,
  ) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(userInfoMap);
  }

  static List<String> generateSearchKeywords(
    String firstname,
    String lastname,
  ) {
    final String lowercaseFirstName = firstname.toLowerCase();
    final String lowercaseLastName = lastname.toLowerCase();

    final Set<String> substrings = {}
      ..add(lowercaseFirstName[0])
      ..addAll(
        Iterable.generate(
          lowercaseFirstName.length,
          (i) => lowercaseFirstName.substring(0, i + 1),
        ),
      )
      ..add(lowercaseLastName[0])
      ..addAll(
        Iterable.generate(
          lowercaseLastName.length,
          (i) => lowercaseLastName.substring(0, i + 1),
        ),
      );

    return substrings.toList();
  }

  static Future<QuerySnapshot> searchUsers(String query) async {
    final String lowercaseQuery = query.toLowerCase();

    final CollectionReference users =
        FirebaseFirestore.instance.collection('users');

    final QuerySnapshot querySnapshot = await users
        .where('searchKeywords', arrayContains: lowercaseQuery)
        .get();

    return querySnapshot;
  }

  static Future<void> createChatRoom(
    String chatRoomId,
    Map<String, dynamic> chatRoomInfoMap,
  ) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .get();
    if (snapshot.exists) {
      return;
    } else {
      return FirebaseFirestore.instance
          .collection('chatRooms')
          .doc(chatRoomId)
          .set(chatRoomInfoMap);
    }
  }

  static Future<void> addMessage(
    String chatRoomId,
    String messageId,
    Map<String, dynamic> messageInfoMap,
  ) async {
    return FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .collection('messages')
        .doc(messageId)
        .set(messageInfoMap);
  }

  static Future<void> updateLastMessageSended(
    String chatRoomId,
    Map<String, dynamic> lastMessageInfoMap,
  ) {
    return FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .set(lastMessageInfoMap, SetOptions(merge: true));
  }

  static Future<Stream<QuerySnapshot>> getChatRoomMessages(
    String chatRoomId,
  ) async {
    return FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('time', descending: true)
        .snapshots();
  }

  static Future<Stream<QuerySnapshot>> getChatRooms() async {
    final User? user = FirebaseAuth.instance.currentUser;
    debugPrint(user?.email);

    final Stream<QuerySnapshot> sn = FirebaseFirestore.instance
        .collection('chatRooms')
        .orderBy('time', descending: true)
        .where('users', arrayContains: user?.email)
        .snapshots();
    debugPrint('sn: $sn');
    return sn;
  }

  static Future<QuerySnapshot> getUserInfo(String uid) async {
    return FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get();
  }

  static String getChatRoomIdbyUid(String uidTo, String s) {
    final User? user = FirebaseAuth.instance.currentUser;

    final String currentUserUid = user!.uid;
    if (currentUserUid.codeUnitAt(0) > uidTo.codeUnitAt(0)) {
      return '${currentUserUid}_$uidTo';
    }
    return '${uidTo}_$currentUserUid';
  }
}
