import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/football_controller.dart';
import 'package:flutter_application_1/models/football_objects.dart';

class AddPlayerDialog extends StatefulWidget {
  final FootballController footballController;
  const AddPlayerDialog({super.key, required this.footballController});

  @override
  State<AddPlayerDialog> createState() => _AddPlayerDialogState();
}

class _AddPlayerDialogState extends State<AddPlayerDialog> {
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Player'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: 'Position'),
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: 'Number'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Add the player
            widget.footballController.addPlayer(
              Players(
                name: nameController.text,
                position: positionController.text,
                number: numberController.text,
                img: 'assets/livereactionadmin.png', // hardcoded cuz its the defaults
              ),
            );
            Navigator.of(context).pop();
          },
          child: Text('Add'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
      ],
    );
  }
}