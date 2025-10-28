import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/component/widget_Textfield.dart';
import 'package:flutter_application_1/controllers/contact_controller.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final controller = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts Pages')),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              Expanded(
                child: MyTextfield(
                  controller1: controller.nameController,
                  label: 'Name',
                  hint: 'Name',
                  isPassword: false,
                ),
              ),
              SizedBox(width: 8),
              MyButton(
                text: 'Add',
                textColor: Colors.amberAccent,
                onPressed: () {
                  controller.addName();
                },
              ),
            ],
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(controller.names[index]),
                      trailing: IconButton(
                        onPressed: () {
                          controller.deleteName(index);
                        },
                        icon: Image.asset(
                          'assets/oguwi.gif',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Text('killyourself'),
      //     Row(
      //       children: [
      //         MyTextfield(
      //           controller1: controller.nameController,
      //           label: 'Name',
      //           hint: 'Enter your name here',
      //           isPassword: false,
      //         ),
      //         MyButton(
      //           text: 'Add',
      //           textColor: Colors.black,
      //           onPressed: () {
      //             controller.addName();
      //           },
      //         ),
      //       ],
      //     ),

      //     Expanded(
      //       child: Obx(
      //         () => ListView.builder(
      //           itemCount: controller.names.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return Card(
      //               margin: const EdgeInsets.all(8.0),
      //               child: ListTile(
      //                 // title: ,
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
