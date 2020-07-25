import 'Post.dart';
import 'User.dart';

class Comment {
  int id;
  String body;
  DateTime timestamp;
  User author;
  Post parentPost;

  Comment(
      {this.id,
        this.body,
        this.timestamp,
        this.author,
        this.parentPost});

  factory Comment.fromJson(Map<String, dynamic> json) {
    Comment comment = Comment();
    if(json.containsKey('id'))
      comment.id = json['id'] as int;
    if(json.containsKey('body'))
      comment.body = json['body'] as String;
    if(json.containsKey('timestamp'))
      comment.timestamp = json['timestamp'] as DateTime;
    if(json.containsKey('author'))
      comment.author = User.fromJson(json['author']);
    if(json.containsKey('parent_post'))
      comment.parentPost = Post.fromJson(json['parent_post']);

    return comment;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if (id != null) map['id'] = id;
    if(body != null) map['body'] = body;
    if(timestamp != null) map['timestamp'] = timestamp;
    if(author != null) map['author'] = author.toJson();
    if(parentPost != null) map['parent_post'] = author.toJson();

    return map;
  }

}