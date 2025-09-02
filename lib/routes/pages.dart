import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bindings/calculator_binding.dart';
import 'package:flutter_application_1/bindings/football_binding.dart';
import 'package:flutter_application_1/bindings/footballedit_binding.dart';
import 'package:flutter_application_1/navbar/both.dart';
import 'package:flutter_application_1/navbar/homepage.dart';
import 'package:flutter_application_1/navbar/mainpage.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_edit_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.calc,
      page: () => CalculatorPage(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: AppRoutes.footballplayers,
      page: () => FootballPage(),
      binding: FootballBinding(),
    ),
    GetPage(
      name: AppRoutes.footballeditplayers,
      page: () => FootballEditPage(),
      binding: FootballeditBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
      binding: BindingsBuilder(() {
        CalculatorBinding().dependencies();
        FootballBinding().dependencies();
        FootballeditBinding().dependencies();
      }),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HoumPage(),
      binding: BindingsBuilder(() {
        CalculatorBinding().dependencies();
        FootballBinding().dependencies();
        FootballeditBinding().dependencies();
      }),
    ),
    GetPage(
      name: AppRoutes.both,
      page: () => BothPage(),
      binding: BindingsBuilder(() {
        CalculatorBinding().dependencies();
        FootballBinding().dependencies();
        FootballeditBinding().dependencies();
      }),
    ),
  ];
}
