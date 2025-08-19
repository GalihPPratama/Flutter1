import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
          ],
        ),
      ),
    );
  }
}
