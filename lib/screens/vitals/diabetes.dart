import 'package:flutter/material.dart';

class DiabetesEntryPage extends StatelessWidget {
  const DiabetesEntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes Entry'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Enter Blood Sugar Levels (mmol/L)',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Fasting Blood Sugar ',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Random Blood Sugar ',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle save or submit action
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
