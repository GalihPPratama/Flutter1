import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();


    //fetch the FCM token per device
    final fCMToken = await _firebaseMessaging.getToken();
    //print that shii dawg, look for it in the terminal fr fr 
    print('Token: $fCMToken');
  }
}
