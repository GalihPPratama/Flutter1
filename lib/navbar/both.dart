import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/nav_controller.dart';
import 'package:flutter_application_1/fragment/hom_fragment.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:get/get.dart';

class BothPage extends StatelessWidget {
  BothPage({super.key});

  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    HomeFragment(),
    CalculatorPage(),
    FootballPage(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('assets/profile.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.green.withOpacity(0.5),
                      BlendMode.dstATop,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Jan Pokket',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      '11 PPLG 1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Houm'),
                onTap: () {
                  navController.changeTab(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: Text('Calc'),
                onTap: () {
                  navController.changeTab(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.sports_soccer),
                title: Text('Futbol'),
                onTap: () {
                  navController.changeTab(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  navController.changeTab(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: pages[navController.selectedIndex.value],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changeTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Calc'),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Futbol',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
