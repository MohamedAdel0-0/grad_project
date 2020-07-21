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
        User user = User();
        if(json.containsKey('id'))
            user.id = json['id'] as int;
        if(json.containsKey('name'))
            user.name = json['name'] as String;
        if(json.containsKey('email'))
            user.email = json['email'] as String;
        if(json.containsKey('token'))
            user.token = json['token'] as String;
        if(json.containsKey('registration_number'))
            user.registrationNumber = json['registration_number'] as int;
        if(json.containsKey('password'))
            user.password = json['password'] as String;
        if(json.containsKey('image'))
            user.image =  json['image'] as String;
        if(json.containsKey('messages_allowed'))
            user.messagesAllowed = json['messages_allowed'] as bool;
        if(json.containsKey('interests'))
            user.interests = (json['interests'] as List).map((dynamic item) => Topic.fromJson(item)).toList();
        if(json.containsKey('college'))
            user.college = College.fromJson(json['college']);
        if(json.containsKey('departments'))
            user.department = Department.fromJson(json['department']);

       return user;
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
