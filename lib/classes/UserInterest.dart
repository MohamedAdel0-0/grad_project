import 'Topics.dart';
import 'User.dart';

class UserInterest {
  final int id;
  final User user;
  final Topic topic;

  UserInterest({this.id, this.user, this.topic});

  factory UserInterest.fromJson(Map<String, dynamic> json) {
    return UserInterest(
      id: json['id'] as int,
      user: User.fromJson(json['user']),
      topic: Topic.fromJson(json['topic'])
    );
  }

}
