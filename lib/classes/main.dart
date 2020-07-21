import 'dart:convert';

import 'package:grad_project/classes/College.dart';
import 'package:grad_project/classes/Department.dart';
import 'package:grad_project/classes/Topic.dart';

import 'RESTClient.dart';
import 'User.dart';



Future<void> main() async {
	//RESTClient.addTopic(Topic(name:"Topic1")); // Successful
	//RESTClient.addDepartment(Department(name:"IS")); // Successful
	/*List<Department> departments = new List();
	departments.add(Department(id:1));
	RESTClient.addCollege(College(name:"CCIT", departments: departments));*/ // Successful

	List<Topic> interests = new List();
	interests.add(Topic(id:1));
	interests.add(Topic(id:2));
	User u = User(name:"User1", email: "email1", password: "password1", registrationNumber: 1, image: "1", messagesAllowed: true, interests: interests, college: College(id:1), department: Department(id:1));
	RESTClient.register(u);


}
