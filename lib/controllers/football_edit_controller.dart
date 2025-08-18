import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/models/football_objects.dart';
import 'package:get/get.dart';

class FootballEditController extends GetxController {
  late int index;
  late Rxn<Players> player;

  final FootballController footballController = Get.find();

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args is Map<String, dynamic> &&
        args['player'] is Players &&
        args['index'] is int) {
      index = args['index'] as int;
      player = Rxn<Players>();
      player.value = args['player'] as Players;
    } else {
      // Provide fallback/defaults or handle error
      index = 0;
      player = Rxn<Players>();
      player.value = null;
      // Optionally, show an error or navigate back
    }
  }

  void updateName(String value) => player.update((p) {
    if (p != null) p.name = value;
  });

  void updatePosition(String value) => player.update((p) {
    if (p != null) p.position = value;
  });

  void updateNumber(String value) => player.update((p) {
    if (p != null) p.number = value;
  });

  void saveChanges() {
    if (player.value != null) {
      footballController.updatePlayer(index, player.value!);
    }
  }
}
