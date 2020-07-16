class Topic {
  final int id;
  final String name;

  Topic({this.id, this.name});

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

}
