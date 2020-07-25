import 'package:grad_project/classes/College.dart';

class Department {
   int id;
   String name;
   College college;

  Department({this.id, this.name, this.college});

  factory Department.fromJson(Map<String, dynamic> json) {
    Department department = Department();
    if(json.containsKey('id'))
      department.id = json['id'] as int;
    if(json.containsKey('name'))
      department.name = json['name'] as String;
    if(json.containsKey('college'))
      department.college = College.fromJson(json['college']);

    return department;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if(id != null)
      map['id'] = id;
    if(name != null)
      map['name'] = name;

    return map;
  }

}
