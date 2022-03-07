// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:project/model/login.dart';
//
// class APIService {
//   Future<LoginResponceModel> login(LoginRequestModel requestModel) async {
//     Uri url = "https://reqres.in/api/login" as Uri;
//
//     final response = await http.post(url, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponceModel.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load data!');
//     }
//   }
// }
