import 'package:flutter_application_1/models/student_models.dart';
import 'package:flutter_application_1/service/student_service.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  final StudentService _service = StudentService();

  var student = Rxn<Student>(); // reactive student
  var isLoading = false.obs;

  Future<void> createStudent(String id, String name, int saldoAwal) async {
    isLoading.value = true;
    final newStudent = Student(id: id, name: name, saldo: saldoAwal);
    await _service.createStudent(newStudent);
    student.value = newStudent;
    isLoading.value = false;
  }

  Future<void> fetchStudent(String id) async {
    isLoading.value = true;
    student.value = await _service.getStudent(id);
    isLoading.value = false;
  }

  Future<void> topUp(String id, int amount) async {
    isLoading.value = true;
    await _service.topUpSaldo(id, amount);
    student.value = await _service.getStudent(id); // refresh data
    isLoading.value = false;
  }

  Future<void> deleteStudent(String id) async {
    isLoading.value = true;
    await _service.deleteStudent(id);
    student.value = null;
    isLoading.value = false;
  }
}