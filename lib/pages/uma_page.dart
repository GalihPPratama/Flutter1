import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/uma_controller.dart';
import 'package:get/get.dart';

class UmaPage extends StatelessWidget {
  UmaPage({super.key});

  final controller = Get.find<UmaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UMAUMAUMAUMYA")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: controller.fetchUmaTable,
          child: ListView.builder(
            itemCount: controller.Umas.length,
            itemBuilder: (context, index) {
              final uma = controller.Umas[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(uma.thumbImg),
                  ),
                  title: Text(uma.nameEn),
                  subtitle: Text('JP : ' + uma.nameJp),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
