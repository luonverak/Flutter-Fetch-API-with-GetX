import 'package:flutter/material.dart';
import 'package:flutter_api/controller/auth_controller.dart';
import 'package:flutter_api/model/auth_model.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _username,
              decoration: const InputDecoration(
                label: Text('Username'),
              ),
            ),
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.loginAuth(
                  AuthModel(username: _username.text, password: _password.text),
                );
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
