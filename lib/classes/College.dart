import 'dart:convert';
import 'Department.dart';

class College {
   int id;
   String name;
   List<Department> departments;

  College({this.id, this.name, this.departments});

  factory College.fromJson(Map<String, dynamic> json) {
    College college = College();
    if(json.containsKey('id')) college.id = json['id'] as int;
    if(json.containsKey('name')) college.name = json['name'] as String;
    if(json.containsKey('departments')) college.departments = (json['departments'] as List).map((dynamic item) => Department.fromJson(item)).toList();

    return college;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if(id != null)
      map['id'] = id;
    if(name != null)
      map['name'] = name;
    if(departments != null)
      map['departments'] = departments.map((Department d) => d.toJson()).toList();

    return map;
  }

}
