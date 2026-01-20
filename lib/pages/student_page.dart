import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/student_controller.dart';
import 'package:get/get.dart';

class StudentPage extends StatelessWidget {
  final StudentController controller = Get.put(StudentController());

  final TextEditingController idCtrl = TextEditingController();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController saldoCtrl = TextEditingController();

  StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top Up Saldo Pelajar")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: idCtrl, decoration: const InputDecoration(labelText: "ID")),
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: "Nama")),
            TextField(controller: saldoCtrl, decoration: const InputDecoration(labelText: "Saldo Awal")),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.createStudent(
                  idCtrl.text,
                  nameCtrl.text,
                  int.parse(saldoCtrl.text),
                );
              },
              child: const Text("Create Student"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.fetchStudent(idCtrl.text);
              },
              child: const Text("Get Student"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.topUp(idCtrl.text, 10000);
              },
              child: const Text("Top Up 10.000"),
            ),
            const SizedBox(height: 16),
            Obx(() {
              if (controller.isLoading.value) {
                return const CircularProgressIndicator();
              }
              if (controller.student.value != null) {
                return Text("Saldo: ${controller.student.value!.saldo}");
              }
              return const Text("Belum ada data");
            }),
          ],
        ),
      ),
    );
  }
}