import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/button.dart';
import 'package:flutter_application_1/component/widget_Textfield.dart';
import 'package:flutter_application_1/controllers/calculator_contoller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorContoller calculatorContoller = Get.put(
    CalculatorContoller(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calc")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTextfield(
            controller1: calculatorContoller.txtAngka1,
            label: 'Angka 1',
            hint: 'Input angka pertama',
            isPassword: false,
          ),
          MyTextfield(
            controller1: calculatorContoller.txtAngka2,
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
                MyButton(text: "-", textColor: Colors.blue, onPressed: () {}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                MyButton(text: "X", textColor: Colors.blue, onPressed: () {}),
                MyButton(text: "/", textColor: Colors.blue, onPressed: () {}),
              ],
            ),
          ),
          Obx(() {
            return Text("Hasil " + calculatorContoller.hasil.value);
          }),
          MyButton(text: 'clear', textColor: Colors.green, onPressed: () {}),
        ],
      ),
    );
  }
}
