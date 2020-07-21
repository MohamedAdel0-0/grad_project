import 'dart:convert';
import 'Topic.dart';
import 'User.dart';
import 'Comment.dart';

class Post {
  int id;
  String title;
  String body;
  DateTime timestamp;
  int score;
  User author;
  List<Topic> topics;
  List<Comment> comments;

  Post(
      {this.id,
        this.title,
        this.body,
        this.timestamp,
        this.score,
        this.author,
        this.topics,
        this.comments});

  factory Post.fromJson(Map<String, dynamic> json) {
    Post post = Post();
    if(json.containsKey('id'))
      post.id = json['id'] as int;
    if(json.containsKey('title'))
      post.title = json['title'] as String;
    if(json.containsKey('body'))
      post.body = json['body'] as String;
    if(json.containsKey('timestamp'))
      post.timestamp = json['timestamp'] as DateTime;
    if(json.containsKey('score'))
      post.score =  json['score'] as int;
    if(json.containsKey('author'))
      post.author = User.fromJson(json['author']);
    if(json.containsKey('topics'))
      post.topics = (json['topics'] as List)
          .map((dynamic item) => Topic.fromJson(item))
          .toList();
    if(json.containsKey('comments'))
      post.comments = (json['comments'] as List)
          .map((dynamic item) => Comment.fromJson(item))
          .toList();

    return post;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if (id != null) map['id'] = id;
    if (title != null) map['title'] = title;
    if(body != null) map['body'] = body;
    if(timestamp != null) map['timestamp'] = timestamp;
    if(score != null) map['score'] = score;
    if(author != null) map['author'] = author.toJson();
    if(topics != null) map['topics'] = topics.map((Topic t) => t.toJson()).toList();
    if(comments != null) map['comments'] = comments.map((Comment c) => c.toJson()).toList();

    return map;
  }

}