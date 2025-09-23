import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString("username");
    await Future.delayed(Duration(seconds: 1));
    if (savedUsername != null) {
      Get.offAllNamed(AppRoutes.both);
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }
}
