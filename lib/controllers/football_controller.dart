import 'package:flutter_application_1/models/football_objects.dart';
import 'package:get/get.dart';

class FootballController extends GetxController {
  var Teamlist = <Players>[
    Players(
      name: "Max Verstappen",
      position: "RBR",
      number: "1",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Special Week",
      position: "Spica",
      number: "33",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Player A",
      position: "Player A Position",
      number: "Player Number",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Player B",
      position: "Player B Position",
      number: "Player Number",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Player C",
      position: "Player C Position",
      number: "Player Number",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Player D",
      position: "Player D Position",
      number: "Player Number",
      img: 'assets/livereactionadmin.png',
    ),
    Players(
      name: "Player E",
      position: "Player E Position",
      number: "Player Number",
      img: 'assets/livereactionadmin.png',
    ),
  ].obs;

  void addPlayer(Players player) {
    Teamlist.add(player);
  }

  void updatePlayer(int index, Players updatedPlayer) {
    Teamlist[index] = updatedPlayer;
  }
}
