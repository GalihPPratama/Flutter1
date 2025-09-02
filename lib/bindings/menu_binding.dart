import 'package:flutter_application_1/controllers/calculator_contoller.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballEditController>(() => FootballEditController());
    Get.lazyPut<FootballController>(() => FootballController());
    Get.lazyPut<CalculatorContoller>(() => CalculatorContoller());
    // TODO: implement dependencies
  }
}
