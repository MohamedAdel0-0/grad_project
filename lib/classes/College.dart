import 'dart:convert';

import 'Department.dart';

class College {
   int id;
   String name;
   List<Department> departments;

  College({this.id, this.name, this.departments});

  factory College.fromJson(Map<String, dynamic> json) {
    return College(
      id: json['id'] as int,
      name: json['name'] as String,
      departments: (json['departments'] as List).map((dynamic item) => Department.fromJson(item)).toList()
    );
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
