import 'dart:convert';

import 'package:grad_project/classes/College.dart';
import 'package:grad_project/classes/Comment.dart';
import 'package:grad_project/classes/Department.dart';
import 'package:grad_project/classes/Post.dart';
import 'package:grad_project/classes/Topic.dart';

import 'RESTClient.dart';
import 'User.dart';



void main()  {
	//RESTClient.addTopic(Topic(name:"Topic1")); // Successful
	//RESTClient.addDepartment(Department(name:"IS")); // Successful
	/*List<Department> departments = new List();
	departments.add(Department(id:1));
	RESTClient.addCollege(College(name:"CCIT", departments: departments));*/ // Successful

	/*List<Topic> interests = new List();
	interests.add(Topic(id:2));
	User u = User(name:"User3", email: "email3", password: "password3", registrationNumber: 3, image: "3", messagesAllowed: false, interests: interests, college: College(id:1), department: Department(id:1));
	RESTClient.register(u);*/ // Successful

	/*List<Topic> topics = new List();
	topics.add(Topic(id:1));
	topics.add(Topic(id:2));
	RESTClient.addPost((Post(title:"title3", body:"body3", author: User(id:2), topics: topics)));*/ // Successful

	/*RESTClient.addComment(Comment(body:"comment1", author: User(id:1), parentPost: Post(id:1)));
	RESTClient.addComment(Comment(body:"comment2", author: User(id:2), parentPost: Post(id:1)));
	RESTClient.addComment(Comment(body:"comment3", author: User(id:1), parentPost: Post(id:1)));*/ // Successful

}
