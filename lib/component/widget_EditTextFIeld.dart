import 'package:flutter/material.dart';

class MyEditingTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final ValueChanged<String>? onChanged;

  const MyEditingTextField({
    super.key,
    required this.textEditingController,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: const Color.fromARGB(255, 70, 190, 211)),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.horizontal(),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 136, 129, 199),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color.fromARGB(255, 70, 190, 211)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color.fromARGB(255, 70, 190, 211), width: 3),
        ),
      ),
    );
  }
}
