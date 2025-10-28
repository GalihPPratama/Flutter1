import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/models/Clientnetwork.dart';
import 'package:flutter_application_1/models/LoginModel.dart';
import 'package:flutter_application_1/routes/routes.dart';

class LoginApiController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isLoading = false.obs;

  Future<void> loginApi() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Username and password required',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    isLoading.value = true;
    try {
      final response = await ClientNetwork.postData('login', {
        'username': username,
        'password': password,
      });

      debugPrint('login status: ${response.statusCode}');
      debugPrint('login body: ${response.body}');

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final data = loginModelFromJson(response.body);

        if (data.status == true) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('auth_token', data.token);
          await prefs.setString('username', username);

          Get.snackbar(
            'Success',
            data.message,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
          );
          Get.toNamed(
            AppRoutes.both,
          ); // or AppRoutes.both / AppRoutes.home — use your main route
        } else {
          Get.snackbar(
            'Login failed',
            data.message,
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        Get.snackbar(
          'Server error',
          'Status code: ${response.statusCode}',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e, st) {
      debugPrint('login error: $e\n$st');
      Get.snackbar(
        'Error',
        'Network or parsing error: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
    await prefs.remove('username');
    // clear any other saved user data if needed
    Get.offAllNamed(AppRoutes.loginapi); // navigate back to login screen
    Get.snackbar(
      'Logged out',
      'You have been logged out',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token') != null;
  }
}
