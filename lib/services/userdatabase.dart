import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabaseService {
  final String uid;
  UserDatabaseService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String email) async {
    return await userCollection.doc(uid).set({'email': email});
  }
}
