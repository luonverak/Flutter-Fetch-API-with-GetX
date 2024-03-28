import 'dart:convert';

List<AuthModel> authModelFromJson(String str) =>
    List<AuthModel>.from(json.decode(str).map((x) => AuthModel.fromJson(x)));

class AuthModel {
  final String username;
  final String password;

  AuthModel({
    required this.username,
    required this.password,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}
