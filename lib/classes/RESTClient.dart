import 'package:http/http.dart' as http;
import 'dart:convert';
import 'User.dart';

class RESTClien {
  static const SERVER_URL = 'https://e443aad53bf7.ngrok.io';

  static Future<User> login(User user) async {
    var response = await http.post(Uri.encodeFull(SERVER_URL + '/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: jsonEncode(<String, String>{
        'email': user.email,
        'password': user.password,
      }),
    );
    
        print(response.body);

    if (response.statusCode == 200) {
      User user = User.fromJson(json.decode(response.body));
      return user;
    }

    else if (response.statusCode == 401) {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print('Failed to login');
      throw Exception('Failed to login');
    }
  }

  static Future<String> register(User user) async {
    final response = await http.post(SERVER_URL + '/api/users',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, dynamic>{
        'email' : user.email,
        'name' : user.name,
        'registrationNumber' : user.registrationNumber,
        'password': user.password,
      }),
    );

    Map jsonResponse = json.decode(response.body);
    String result = jsonResponse['result'];
     print(response.body);
    if (response.statusCode == 201)
      return result;


    else if(response.statusCode == 400)
    {
      print('Failed to register user: $result');
      throw Exception(result);
    }

  }
}
