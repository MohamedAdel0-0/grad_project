import 'package:grad_project/classes/College.dart';

class Department {
   int id;
   String name;
   College college;

  Department({this.id, this.name, this.college});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] as int,
      name: json['name'] as String,
    );
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
