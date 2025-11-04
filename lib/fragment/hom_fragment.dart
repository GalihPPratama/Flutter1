import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/notification_controller.dart';
import 'package:get/get.dart';

class HomeFragment extends StatelessWidget {
  HomeFragment({super.key});

  final NotificationController c = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Cloud Messaging")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("📩 Last message received:"),
              const SizedBox(height: 10),
              Text(c.lastMessage.value, textAlign: TextAlign.center),
              const SizedBox(height: 20),
              const Divider(),
              const Text(
                "📱 Your FCM Token:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SelectableText(c.token.value, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
