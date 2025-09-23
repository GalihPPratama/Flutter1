import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widget_EditButton.dart';
import 'package:flutter_application_1/component/widget_EditTextFIeld.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/controllers/football_edit_controller.dart';
import 'package:get/get.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});
  // final FootballController footballController = Get.put(FootballController());
  final editController = Get.find<FootballEditController>();
  final editcontroller = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(
      text: editController.player.value?.name,
    );
    final PositionController = TextEditingController(
      text: editController.player.value?.position,
    );
    final numberController = TextEditingController(
      text: editController.player.value?.number,
    );

    return Scaffold(
      appBar: AppBar(title: Text("Edit Data"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyEditingTextField(
              textEditingController: nameController,
              label: 'Name',
              onChanged: editController.updateName,
            ),

            const SizedBox(height: 30),

            MyEditingTextField(
              textEditingController: PositionController,
              label: 'Position',
              onChanged: editController.updatePosition,
            ),

            const SizedBox(height: 30),

            MyEditingTextField(
              textEditingController: numberController,
              label: 'Number',
              onChanged: editController.updateNumber,
            ),

            const SizedBox(height: 30),

            MyEditingButton(
              text: 'Apply Changes',
              textcolor: Colors.white,
              onPressed: () {
                editController.saveChanges();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
