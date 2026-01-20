import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custombutton.dart';
import 'package:flutter_application_1/component/widget_Textfield.dart';
import 'package:flutter_application_1/controllers/login_api_controller.dart';
import 'package:get/get.dart';

class LoginApiPage extends StatelessWidget {
  LoginApiPage({super.key});

  final controllerrrr = Get.find<LoginApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login pej(API)")),
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

            //buttonchckerloaderingger
            Obx(
              () => SizedBox(
                width: 59,
                child: CustomButton(
                  text: controllerrrr.isLoading.value ? "loading" : "Login",
                  textcolor: Colors.white,
                  isLoading: controllerrrr.isLoading.value,
                  onPressed: controllerrrr.loginapi,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => controllerrrr.loginWithGoogle(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/google.png", height: 24),
                    SizedBox(width: 12),
                    Text(
                      "Login with Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
