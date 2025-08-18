import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/routes/pages.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Typeshi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.calc,
      getPages: AppPages.pages,
    );
  }
}
