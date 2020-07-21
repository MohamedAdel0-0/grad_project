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
    Topic topic = Topic();
    if (json.containsKey('id'))
      topic.id = json['id'] as int;
    if (json.containsKey('name'))
      topic.name = json['name'] as String;
    if (json.containsKey('parent_topic'))
      topic.parentTopic = Topic.fromJson(json['parent_topic']);
    if(json.containsKey('interested_users'))
      topic.interestedUsers = (json['interested_users'] as List)
          .map((dynamic item) => User.fromJson(item))
          .toList();
    if(json.containsKey('related_posts'))
      topic.relatedPosts = (json['related_posts'] as List)
          .map((dynamic item) => Post.fromJson(item))
          .toList();
    if(json.containsKey('subtopics'))
      topic.subtopics = (json['subtopics'] as List)
          .map((dynamic item) => Topic.fromJson(item))
          .toList();

    return topic;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if (id != null) map['id'] = id;
    if (name != null) map['name'] = name;
    if (parentTopic != null) map['parent_topic'] = parentTopic.toJson();
    if (interestedUsers != null)
      map['interested_users'] = jsonEncode(interestedUsers);
    if (relatedPosts != null) map['related_posts'] = jsonEncode(relatedPosts);
    if (subtopics != null) map['subtopics'] = jsonEncode(subtopics);

    return map;
  }
}
