import 'dart:convert';

import 'Topic.dart';
import 'College.dart';
import 'Department.dart';

class User {
    int id;
    String name;
    String email;
    String token;
    int registrationNumber;
    String password;
    String image;
    bool messagesAllowed;
    List<Topic> interests;
    College college;
    Department department;
    
    User({this.id, this.name, this.email, this.token, this.registrationNumber, this.password, this.image, this.messagesAllowed ,this.interests, this.college, this.department});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            id: json['id'] as int,
            name: json['name'] as String,
            email: json['email'] as String,
            token: json['token'] as String,
            registrationNumber: json['registration_number'] as int,
            password: json['password'] as String,
            image: json['image'] as String,
            messagesAllowed: json['messages_allowed'] as bool,
            interests: (json['interests'] as List).map((dynamic item) => Topic.fromJson(item)).toList(),
            college: College.fromJson(json['college']),
            department: Department.fromJson(json['department']),
        );
    }


    Map<String, dynamic> toJson() {
        Map<String, dynamic> map = new Map();

        if(id != null)
            map['id'] = id;
        if(name != null)
            map['name'] = name;
        if(email != null)
            map['email'] = email;
        if(password != null)
            map['password'] = password;
        if(token != null)
            map['token'] = token;
        if(registrationNumber != null)
            map['registration_number'] = registrationNumber;
        if(image != null)
            map['image'] = image;
        if(college != null)
            map['college'] = college.toJson();
        if(department != null)
            map['department'] = department.toJson();
        if(interests != null)
            map['interests'] = interests.map((Topic t) => t.toJson()).toList();

        return map;
    }

}
