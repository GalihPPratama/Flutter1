import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/component/widget_TextfieldCalc.dart';
import 'package:flutter_application_1/controllers/calculator_contoller.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/button.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  // final CalculatorContoller calculatorContoller = Get.put(
  //   CalculatorContoller(),
  // );

  final calculatorContoller = Get.find<CalculatorContoller>();
  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calc")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTfCalc(
            controller1: calculatorContoller.txtAngka1,
            label: 'Angka 1',
            hint: 'Input angka pertama',
            isPassword: false,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          MyTfCalc(
            controller1: calculatorContoller.txtAngka2,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            label: 'Angka 1',
            hint: 'Input angka pertama',
            isPassword: false,
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                MyButton(
                  text: "+",
                  textColor: Colors.blue,
                  onPressed: () {
                    calculatorContoller.tambah();
                  },
                ),
                MyButton(
                  text: "-",
                  textColor: Colors.blue,
                  onPressed: () {
                    calculatorContoller.kurang();
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                MyButton(
                  text: "X",
                  textColor: Colors.blue,
                  onPressed: () {
                    calculatorContoller.kali();
                  },
                ),
                MyButton(
                  text: "/",
                  textColor: Colors.blue,
                  onPressed: () {
                    calculatorContoller.bagi();
                  },
                ),
              ],
            ),
          ),
          Obx(() {
            return Text("Hasil ${calculatorContoller.hasil.value}");
          }),
          MyButton(
            text: 'Clear All',
            textColor: Colors.green,
            onPressed: () {
              controller.logout();
            },
          ),
        ],
      ),
    );
  }
}
