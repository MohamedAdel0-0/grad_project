import 'dart:convert';

import 'package:grad_project/classes/College.dart';
import 'package:grad_project/classes/Comment.dart';
import 'package:grad_project/classes/Department.dart';
import 'package:grad_project/classes/Post.dart';
import 'package:grad_project/classes/PostVote.dart';
import 'package:grad_project/classes/Topic.dart';

import 'RESTClient.dart';
import 'User.dart';



void main()  {
	RESTClient.addTopic(Topic(name:"Topic3"));
	RESTClient.addDepartment(Department(name:"CS"));
	List<Department> departments = new List();
	departments.add(Department(id:1));
	RESTClient.addCollege(College(name:"CCIT", departments: departments)); 

	List<Topic> interests = new List();
	interests.add(Topic(id:1));
	User u = User(name:"User1", email: "email1", password: "password1", registrationNumber: 3, image: "1", messagesAllowed: false, interests: interests, college: College(id:1), department: Department(id:1));
	RESTClient.register(u);

	List<Topic> topics = new List();
	topics.add(Topic(id:2));

	RESTClient.addPost((Post(title:"title5", body:"body5", author: User(id:1), topics: topics))); 

	RESTClient.addComment(Comment(body:"comment1", author: User(id:1), parentPost: Post(id:1)));
	RESTClient.addComment(Comment(body:"comment2", author: User(id:2), parentPost: Post(id:1)));
	RESTClient.addComment(Comment(body:"comment3", author: User(id:1), parentPost: Post(id:1))); 

  RESTClient.addPostVote(PostVote(userID:1, postID: 2, vote:1));



	RESTClient.addPost((Post(title:"title5", body:"body5", author: User(id:1), topics: topics)));

	interests.add(Topic(id:1));
	RESTClient.getUserTimeline(u, Duration(hours: 24));
	RESTClient.getUserTimeline(u, Duration(days: 7));
	RESTClient.getUserTimeline(u, Duration(days: 365));

}
