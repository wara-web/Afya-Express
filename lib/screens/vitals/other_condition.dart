import 'package:flutter/material.dart';

class OtherConditionEntryPage extends StatefulWidget {
  const OtherConditionEntryPage({Key? key}) : super(key: key);

  @override
  _OtherConditionEntryPageState createState() => _OtherConditionEntryPageState();
}

class _OtherConditionEntryPageState extends State<OtherConditionEntryPage> {
  List<Widget> conditionWidgets = [];

  void addCondition() {
    setState(() {
      conditionWidgets.add(_buildConditionWidget());
    });
  }

  Widget _buildConditionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Condition',
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Brief Explanation',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Conditions Entry'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...conditionWidgets,
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: addCondition,
              child: const Text('Add Condition'),
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
