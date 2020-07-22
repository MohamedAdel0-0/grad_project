import 'package:grad_project/classes/Post.dart';

class PostVote {
  int id;
  int userID;
  int postID;
  int vote;

  PostVote({this.id, this.userID, this.postID, this.vote});

  factory PostVote.fromJson(Map<String, dynamic> json) {
    PostVote postVote = PostVote();
    if(json.containsKey('id')) postVote.id = json['id'] as int;
    if(json.containsKey('user_id')) postVote.userID = json['user_id'] as int;
    if(json.containsKey('post_id')) postVote.postID = json['post_id'] as int;
    if(json.containsKey('vote')) postVote.vote = json['vote'] as int;

    return postVote;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if(id != null)
      map['id'] = id;
    if(userID != null)
      map['user_id'] = userID;
    if(postID != null)
      map['post_id'] = postID;
    if(userID != null)
      map['vote'] = vote;


    return map;
  }
}