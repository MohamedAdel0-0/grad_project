class User {
  final int id;
  final String name;
  final String email;
  final String token;
  final String registrationNumber;
  final String password;
  final String image;

  User({this.id, this.name, this.email, this.token, this.registrationNumber, this.password, this.image});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
    );
  }

}
