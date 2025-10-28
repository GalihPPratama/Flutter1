import 'package:flutter_application_1/controllers/calculator_contoller.dart';
import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:flutter_application_1/controllers/example_controller.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:flutter_application_1/controllers/login_api_controller.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballEditController>(() => FootballEditController());
    Get.lazyPut<FootballController>(() => FootballController());
    Get.lazyPut<CalculatorContoller>(() => CalculatorContoller());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<ContactController>(() => ContactController());
    Get.lazyPut<ExampleController>(() => ExampleController());
    Get.lazyPut<LoginApiController>(() => LoginApiController());
    // TODO: implement dependencies
  }
}
