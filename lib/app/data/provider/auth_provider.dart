import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

//nossa url base
const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

//nossa classe responsável por encapsular os métodos http
class AuthApiClient {
//seu client http, pode ser http, http.Client, dio, apenas traga seus métodos para cá e funcionarão normalmente :D
  final http.Client httpClient = http.Client();
  
//   Future<Map<String, dynamic>> login(String email, String password) async {

//     try{

//       var response = await http.post(baseUrl + "/login");
//     }
//   }

//   //um exemplo rápido, aqui estamos recuperando todos os posts disponibilizados pela api(100)

}