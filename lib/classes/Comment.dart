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
    return Comment(
      id: json['id'] as int,
      body: json['body'] as String,
      timestamp: json['timestamp'] as DateTime,
      author: User.fromJson(json['author']),
      parentPost: Post.fromJson(json['parent_post']),
    );
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