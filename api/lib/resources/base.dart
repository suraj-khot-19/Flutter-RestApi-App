import 'dart:convert';
import 'package:http/http.dart' as http;

String baseUrl = "https://662dedc1a7dda1fa378b9313.mockapi.io/users";

class Base {
  var client = http.Client();
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    final respose = await client.get(url, headers: _headers);
    if (respose.statusCode == 200) {
      return respose.body;
    } else {}
  }

  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    final respose = await client.post(url, body: _payload, headers: _headers);
    if (respose.statusCode == 201) {
      return respose.body;
    } else {
      return print("error in base page....");
    }
  }

  Future<dynamic> put(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    final respose = await client.put(url, body: _payload, headers: _headers);
    if (respose.statusCode == 200) {
      return respose.body;
    } else {
      return print("error in base page....");
    }
  }

  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    final respose = await client.delete(url, headers: _headers);
    if (respose.statusCode == 200) {
      return respose.body;
    } else {
      return print("error in base page....");
    }
  }
}
