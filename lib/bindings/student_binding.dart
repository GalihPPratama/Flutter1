import 'package:flutter_application_1/controllers/student_controller.dart';
import 'package:get/get.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentController>(() => StudentController());
  }
}
