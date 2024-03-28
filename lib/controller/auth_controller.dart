import 'package:flutter_api/model/auth_model.dart';
import 'package:flutter_api/service/auth_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Future<void> loginAuth(AuthModel authModel) async {
    AuthService().loginAuth(authModel);
  }
}
