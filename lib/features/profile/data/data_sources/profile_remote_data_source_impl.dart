import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:realtime_chat_app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:realtime_chat_app/features/profile/data/models/user_model.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl({required FirebaseAuth auth, required FirebaseFirestore firestore})
    : _auth = auth,
      _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  @override
  Future<UserModel> getProfileInfo(String uid) async {
    final snapshot = await _firestore.collection('users').doc(uid).get();
    return UserModel.fromSnapshot(snapshot);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
