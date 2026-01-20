import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/premieretable_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FootballapiPage extends StatelessWidget {
  FootballapiPage({super.key});

  final controller = Get.find<PremieretableController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("P R E MIERE LIGMA BALLS")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: controller.fetchPremiereTable,
          child: ListView.builder(
            itemCount: controller.standings.length,
            itemBuilder: (context, index) {
              final team = controller.standings[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(team.strBadge),
                  ),
                  trailing: Text(team.intPoints),
                  title: Text(team.strTeam),
                  subtitle: Text(
                    "Played ${team.intPlayed} L : ${team.intLoss} Draws ${team.intDraw}",
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
