import 'package:flutter_api/api/auth_api.dart';
import 'package:flutter_api/model/auth_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> loginAuth(AuthModel authModel) async {
    var response = await http.post(
      Uri.parse(authAPI),
      body: authModel.toJson(),
    );
    if (response.statusCode == 200) {
      print(response.body);
    }
  }
}
