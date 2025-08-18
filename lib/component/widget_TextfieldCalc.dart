import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTfCalc extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller1;
  final bool isPassword;
  const MyTfCalc({
    super.key,
    required this.controller1,
    required this.label,
    required this.hint,
    required this.isPassword,
    required TextInputType keyboardType,
    required List<dynamic> inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(),
      ),
      controller: controller1,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[],
    );
  }
}
