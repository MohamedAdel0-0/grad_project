import 'dart:convert';

import 'package:grad_project/classes/College.dart';
import 'package:grad_project/classes/Department.dart';

import 'RESTClient.dart';



Future<void> main() async {
	//RESTClient.addTopic(Topic(name:"Topic1")); // Successful
	//RESTClient.addDepartment(Department(name:"IS")); // Successful
	List<Department> departments = new List();
	departments.add(Department(id:1));
	RESTClient.addCollege(College(name:"CCIT", departments: departments));

	/*Map<String, dynamic> map = new Map();
	map['departments'] = jsonEncode(departments);
	print(map);*/

	//User u = User(name:"TheNEWUSER", email:"maimaiigfg", registrationNumber: 1, password: "thepassword", image:"fgkfgkgf", messagesAllowed: true);
}
