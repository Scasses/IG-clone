import 'package:cloud_firestore/cloud_firestore.dart';

class Posts {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postURL;
  final String profImage;
  final likes;

  const Posts({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postURL,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "postURL": postURL,
        "profImage": profImage,
        "likes": likes,
      };

  static Posts fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;

    return Posts(
      username: snapShot['username'],
      uid: snapShot['uid'],
      postURL: snapShot['postURL'],
      profImage: snapShot['profImage'],
      description: snapShot['description'],
      likes: snapShot['likes'],
      datePublished: snapShot['datePublished'],
      postId: snapShot ['postId'],
    );
  }
}
