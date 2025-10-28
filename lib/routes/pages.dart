import 'package:flutter_application_1/bindings/calculator_binding.dart';
import 'package:flutter_application_1/bindings/contact_binding.dart';
import 'package:flutter_application_1/bindings/example_binding.dart';
import 'package:flutter_application_1/bindings/football_add_binding.dart';
import 'package:flutter_application_1/bindings/football_binding.dart';
import 'package:flutter_application_1/bindings/footballedit_binding.dart';
import 'package:flutter_application_1/bindings/login_api_binding.dart';
import 'package:flutter_application_1/bindings/login_binding.dart';
import 'package:flutter_application_1/bindings/menu_binding.dart';
import 'package:flutter_application_1/bindings/splashscreen_binding.dart';
import 'package:flutter_application_1/navbar/both.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/contact_page.dart';
import 'package:flutter_application_1/pages/example_page.dart';
import 'package:flutter_application_1/pages/football_edit_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/footballadd_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/login_api_page.dart';
import 'package:flutter_application_1/pages/splashscreen_page.dart';
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
    // GetPage(
    //   name: AppRoutes.main,
    //   page: () => MainPage(),
    //   binding: MenuBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.home,
    //   page: () => HoumPage(),
    //   binding: MenuBinding(),
    // ),
    GetPage(
      name: AppRoutes.both,
      page: () => BothPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: AppRoutes.footballadd,
      page: () => FootballaddPage(),
      binding: FootballAddBinding(),
    ),
    GetPage(
      name: AppRoutes.splashscreen,
      page: () => SplashscreenPage(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(  
      name: AppRoutes.contact,
      page: () => ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: AppRoutes.example,
      page: () => ExamplePage(),
      binding: ExampleBinding(),
    ),
    GetPage(
      name: AppRoutes.loginapi,
      page: () => LoginApiPage(),
      binding: LoginApiBinding(),
    ),
  ];
}
