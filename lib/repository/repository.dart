import 'package:http/http.dart' as http;
import 'dart:convert';

class Repository {
  final _baseUrl = 'http://192.168.249.236:3000';

  Future<bool> postData(
      {firstName,
      lastName,
      fullName,
      citizen,
      nik,
      addres,
      date,
      phone,
      email,
      password,
      role}) async {
    print("oke");
    var data = {
      'firstName': firstName,
      'lastName': lastName,
      'fullName': fullName,
      'citizen': citizen,
      'nik': nik,
      'address': addres,
      'date': date,
      'phone': phone,
      'email': email,
      'password': password,
      'role': role
    };

    final response = await http.post(
      Uri.parse(_baseUrl + '/auth/signup'),
      body: data,
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 201) {
      print("succes");
      return true;
    } else {
      return false;
    }
  }
}
