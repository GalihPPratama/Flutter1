import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});
  final FootballController footballController = Get.put(FootballController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my football team ong 🙏")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.Teamlist.length,
            itemBuilder: (context, index) {
              final player = footballController.Teamlist[index];
              return ListTile(

                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.img),
                ),
                onTap: () {
                  Get.snackbar(
                    'Item Clicked',
                    player.name,
                    snackPosition: SnackPosition.BOTTOM,
                    borderRadius: 12,
                    margin: const EdgeInsets.all(12),
                  );

                  Get.toNamed(
                    AppRoutes.footballeditplayers,
                    arguments: {'player': player, 'index': index},
                  );
                },
                title: Text(player.name),
              );
            },
          ),
        ),
      ),
    );
  }
}
