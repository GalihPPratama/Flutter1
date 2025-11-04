import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/controllers/login_api_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final controllerrrr = Get.find<LoginApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Center horizontally

          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: controllerrrr.googlePhoto.value.isEmpty
                    ? AssetImage('assets/google.png')
                    : NetworkImage(controllerrrr.googlePhoto.value)
                          as ImageProvider,
              ),
            ),

            const SizedBox(height: 10),

            Text(controllerrrr.googleName.value),
            Text(
              "11 PPLG 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            Text(controllerrrr.googleEmail.value),
            MyButton(
              text: 'logot',
              textColor: Colors.teal,
              onPressed: () {
                controllerrrr.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
