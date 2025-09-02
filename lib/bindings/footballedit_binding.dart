import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:get/get.dart';

class FootballeditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballEditController>(() => FootballEditController());
  }
}
