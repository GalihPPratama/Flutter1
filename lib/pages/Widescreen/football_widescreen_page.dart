import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class FootballWidescreenPage extends StatelessWidget {
  FootballWidescreenPage({super.key});

  // final FootballController footballController = Get.put(FootballController());
  final footballController = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my football team ong 🙏")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 columns for wide screens
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                  ),
                  itemCount: footballController.Teamlist.length,
                  itemBuilder: (context, index) {
                    final player = footballController.Teamlist[index];
                    return Card(
                      elevation: 4,
                      child: InkWell(
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
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(player.img),
                                radius: 32,
                              ),
                              SizedBox(height: 12),
                              Text(
                                player.name,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.footballadd);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
