// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/controllers/nav_controller.dart';
// import 'package:flutter_application_1/pages/calculator_page.dart';
// import 'package:flutter_application_1/pages/football_page.dart';
// import 'package:flutter_application_1/pages/profile_page.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(GetMaterialApp(home: MainPage()));
// }

// class MainPage extends StatelessWidget {
//   final NavController navController = Get.put(NavController());

//   final List<Widget> pages = [CalculatorPage(), FootballPage(), MyProfile()];

//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Scaffold(
//         body: pages[navController.selectedIndex.value],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: navController.selectedIndex.value,
//           onTap: navController.changeTab,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Calc'),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.sports_soccer),
//               label: 'Futbol',
//             ),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//           ],
//         ),
//       ),
//     );
//   }
// }
