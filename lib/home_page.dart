import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _resultcontroller = TextEditingController();

  void _clearAll() {
    _controller1.clear();
    _controller2.clear();
    _resultcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calc',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text('Calcium', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 22),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final number1 = double.tryParse(_controller1.text);
                    final number2 = double.tryParse(_controller2.text);
                    if (number1 != null && number2 != null) {
                      final hasil = number1 + number2;
                      if (hasil % 1 == 0) {
                        _resultcontroller.text = hasil.toInt().toString();
                      }
                    } else {
                      _resultcontroller.text = "Masukkan dulu angkanya, pls.";
                    }
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final number1 = double.tryParse(_controller1.text);
                    final number2 = double.tryParse(_controller2.text);
                    if (number1 != null && number2 != null) {
                      final hasil = number1 - number2;
                      if (hasil % 1 == 0) {
                        _resultcontroller.text = hasil.toInt().toString();
                      }
                    } else {
                      _resultcontroller.text = "Masukkan dulu angkanya, pls.";
                    }
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final number1 = double.tryParse(_controller1.text);
                    final number2 = double.tryParse(_controller2.text);
                    if (number1 != null && number2 != null) {
                      final hasil = number1 * number2;
                      if (hasil % 1 == 0) {
                        _resultcontroller.text = hasil.toInt().toString();
                      }
                    } else {
                      _resultcontroller.text = "Masukkan dulu angkanya, pls.";
                    }
                  },
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final number1 = double.tryParse(_controller1.text);
                    final number2 = double.tryParse(_controller2.text);
                    if (number1 != null && number2 != null) {
                      final hasil = number1 / number2;
                      if (hasil % 1 == 0) {
                        _resultcontroller.text = hasil.toInt().toString();
                      }
                    } else {
                      _resultcontroller.text = "Masukkan dulu angkanya, pls.";
                    }
                  },
                  child: const Text('%'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _resultcontroller,
              readOnly: true,
              decoration: const InputDecoration(labelText: 'Hasil'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clearAll,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('CLEAR ALL'),
            ),
          ],
        ),
      ),
    );
  }
}
