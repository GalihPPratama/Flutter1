  import 'package:flutter/widgets.dart';
  import 'package:flutter_application_1/routes/routes.dart';
  import 'package:get/get.dart';
  import 'package:shared_preferences/shared_preferences.dart';

  class LoginController extends GetxController {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    login() async {
      if (usernameController.text.toString() == "admin" &&
          passwordController.text.toString() == "admin") {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("username", usernameController.text.toString());
        Get.offAllNamed(AppRoutes.main);
      } else {
        Get.snackbar(
          "Errorrr hauahwuahdskajas ",
          "Incorrect Username or PAssword ",
        );
      }
    }

    logout() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      Get.offAllNamed(AppRoutes.login);
    }
  }
