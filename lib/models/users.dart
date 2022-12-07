import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoURL;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.email,
    required this.uid,
    required this.photoURL,
    required this.username,
    required this.bio,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "photoURL": photoURL,
        "bio": bio,
        "followers": followers,
        "following": following,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapShot['username'],
      uid: snapShot['uid'],
      photoURL: snapShot['photoURL'],
      email: snapShot['email'],
      bio: snapShot['bio'],
      followers: snapShot['followers'],
      following: snapShot['following'],
    );
  }
}
