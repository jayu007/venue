import 'dart:convert';

import 'package:http/http.dart' as http;

class Services {
  String url = "http://192.168.80.144/venue/user/";
  Future<String> login(String email, String password) async {
    var data = {'email': email, 'password': password};
    var response =
        await http.post(Uri.parse(url + "login.php"), body: json.encode(data));

    var message = jsonDecode(response.body);
    return message;
  }

  Future<String> addsignin(email, address, city, state, pincode) async {
    var data = {
      'email': email,
      'address': address,
      'city': city,
      'state': state,
      'pincode': pincode
    };
    var responce = await http.post(Uri.parse(url), body: json.encode(data));
    var message = jsonDecode(responce.body);
    return message;
  }

  Future<List<dynamic>> getData(String email) async {
    var data = {'email': email};
    var response =
        await http.post(Uri.parse(url + "getdata.php"), body: jsonEncode(data));
    var message = jsonDecode(response.body);
    return message;
  }
}
