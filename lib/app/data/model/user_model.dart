import 'dart:convert';

List<UserModel> userFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.email,
    required this.username,
    required this.password,
    required this.id,
  });

  String email;
  String username;
  String password;
  String id;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["email"],
        username: json["username"],
        password: json["password"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "username": username,
        "password": password,
        "id": id,
      };

  static fromMap(resp) {}
}
