import 'dart:convert';
import 'package:flutter_application_1/models/UmaModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UmaController extends GetxController {
  var isLoading = false.obs;
  var Umas = <UmaModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUmaTable();
  }

  Future<void> fetchUmaTable() async {
    const url = "https://umapyoi.net/api/v1/character/list";
    try {
      //shit that may crash
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code${response.statusCode}");
      print("json result${response.body}");

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        Umas.assignAll(data.map((e) => UmaModel.fromJson(e)).toList());
        //fill the variable named "standings" dari data model standingData(json)
      } else {
        Get.snackbar("failed", "failed loading data");
      }
    } catch (exception) {
      Get.snackbar("error", exception.toString());
      //backup plan. i.e., warning snackbar typeshit desuwa~
    }
    isLoading.value = false;
  }
}
