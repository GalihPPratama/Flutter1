import 'dart:convert';

import 'package:flutter_application_1/models/TableModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PremieretableController extends GetxController {
  var isLoading = false.obs;
  var standings = <Table>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPremiereTable();
  }

  Future<void> fetchPremiereTable() async {
    const url =
        "https://www.thesportsdb.com/api/v1/json/3/lookuptable.php?l=4328&s=2025-2026";
    try {
      //shit that may crash
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code" + response.statusCode.toString());
      print("json result" + response.body.toString());

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List standingsData = data['table'];
        standings.assignAll(
          standingsData.map((e) => Table.fromJson(e)).toList(),
        );
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
