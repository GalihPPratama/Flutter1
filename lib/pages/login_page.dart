import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/component/widget_Textfield.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controllerrrr = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login pej")),
      body: Container(
        child: Column(
          children: [
            MyTextfield(
              controller1: controllerrrr.usernameController,
              label: "Username",
              hint: "Name your User",
              isPassword: false,
            ),
            MyTextfield(
              controller1: controllerrrr.passwordController,
              label: "Password",
              hint: "Pass your Word",
              isPassword: true,
            ),
            MyButton(
              text: "Login",
              textColor: Colors.blueAccent,
              onPressed: () {
                controllerrrr.login();
              },
            ),
          ],
        ),
      ),
    );
  }
}
