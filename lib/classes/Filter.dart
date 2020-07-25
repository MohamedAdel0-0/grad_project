class Filter {
  String name;
  String operator;
  dynamic value;
  String field;

  Filter ({this.name, this.operator, this.value, this.field});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = new Map();

    if(name != null)
      map['name'] = name;
    if(operator != null)
      map['op'] = operator;
    if(value != null)
      map['val'] = value;
    else
      map['field'] = field;

    return map;
  }

}