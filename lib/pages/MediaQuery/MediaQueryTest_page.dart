import 'package:flutter/material.dart';

class MediaquerytestPage extends StatelessWidget {
  const MediaquerytestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isWide = size.width > 1080;

    return Scaffold(
      body: isWide
          ? Container(color: Colors.blue)
          : Container(color: Colors.red),
    );
  }
}
