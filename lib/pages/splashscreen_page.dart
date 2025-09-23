import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

  final controllerrrr = Get.find<SplashscreenController>();
  //Oninit means instantly executable, basically, if it's on in, it its
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/ntr.png', width: 400, height: 400),
        ),
      ),
    );
  }
}
