import 'package:flutter_application_1/controllers/calculator_contoller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculatorContoller>(() => CalculatorContoller());
    // Get.put(CalculatorContoller());
    //only call when needed
  }
}
