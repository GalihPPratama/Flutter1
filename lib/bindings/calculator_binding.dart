import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    // Get.put(CalculatorContoller());
    //only call when needed
  }
}
