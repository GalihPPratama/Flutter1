import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widget_EditButton.dart';
import 'package:flutter_application_1/component/widget_EditTextFIeld.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/models/football_objects.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FootballaddPage extends StatelessWidget {
  FootballaddPage({super.key});

  final editController = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final positionController = TextEditingController();
    final numberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Add Data"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyEditingTextField(
              textEditingController: nameController,
              label: 'Name',
            ),

            const SizedBox(height: 30),

            MyEditingTextField(
              textEditingController: positionController,
              label: 'Pos',
            ),

            const SizedBox(height: 30),

            MyEditingTextField(
              textEditingController: numberController,
              label: 'Num',
            ),

            MyEditingButton(
              text: 'add',
              textcolor: Colors.blueAccent,
              onPressed: () {
                editController.addPlayer(
                  Players(
                    name: nameController.text,
                    position: positionController.text,
                    number: numberController.text,
                    img: 'assets/livereactionadmin.png',
                  ),
                );
                //I DONT UNSERSTAND WHY COULDNT IT CATCH addPlayer??????????/
              },
            ),
          ],
        ),
      ),
    );
  }
}
