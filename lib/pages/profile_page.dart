import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/controllers/login_api_controller.dart';
import 'package:get/get.dart';

class MyProfile extends StatelessWidget {
  MyProfile({super.key});

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
              child: Image.asset(
                'assets/profile.png', // or use Image.network for a network image
                width: 150,
                height: 150,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Galih Priadiwangsa Pratama(14)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "11 PPLG 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "galihpriadiwangsa2.0@gmail.com",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
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
