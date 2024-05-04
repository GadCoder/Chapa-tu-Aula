import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiSUM {
  static const String baseUrl = 'sumvirtual.unmsm.edu.pe';


  Future<dynamic> login(String email, String password) async {
    var url = Uri.https(baseUrl, 'sumapi/loguearse');
    var data = jsonEncode({
        'usuario': email,
        'clave': password
    });

    Map<String, String> headers = {
      'accept': 'application/json',
      'Accept-Encoding': 'gzip',
      'authorization': 'AUTH TOKEN',
      'Connection': 'Keep-Alive',
      'Content-Length': '52',
      'Content-Type': 'application/json',
      'Host': 'sumvirtual.unmsm.edu.pe',
      'User-Agent': 'okhttp/4.9.2',
    };


    final response = await http.post(url, body: data, headers: headers);
    if (response.statusCode == 200) {
          final responseBody = jsonDecode(response.body);
          final token = responseBody['data'][0]["token"];
          return token;
    } else {
        return null;
    }
  }
}
