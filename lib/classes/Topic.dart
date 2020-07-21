import 'dart:convert';

import 'Post.dart';
import 'User.dart';

class Topic {
  int id;
  String name;
  List<User> interestedUsers;
  Topic parentTopic;
  List<Post> relatedPosts;
  List<Topic> subtopics;

  Topic(
      {this.id,
      this.name,
      this.interestedUsers,
      this.parentTopic,
      this.relatedPosts,
      this.subtopics});

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      id: json['id'] as int,
      name: json['name'] as String,
      interestedUsers: (json['interested_users'] as List)
          .map((dynamic item) => User.fromJson(item))
          .toList(),
      relatedPosts: (json['related_posts'] as List)
          .map((dynamic item) => Post.fromJson(item))
          .toList(),
      subtopics: (json['subtopics'] as List)
          .map((dynamic item) => Topic.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if (id != null) map['id'] = id;
    if (name != null) map['name'] = name;
    if(parentTopic != null) map['parent_topic'] = parentTopic.toJson();
    if(interestedUsers != null) map['interested_users'] = jsonEncode(interestedUsers);
    if(relatedPosts != null) map['related_posts'] = jsonEncode(relatedPosts);
    if(subtopics != null) map['subtopics'] = jsonEncode(subtopics);

    return map;
  }
}
