import 'package:flutter/material.dart';

class PostOperativeCarePage extends StatefulWidget {
  const PostOperativeCarePage({Key? key}) : super(key: key);

  @override
  _PostOperativeCarePageState createState() => _PostOperativeCarePageState();
}

class _PostOperativeCarePageState extends State<PostOperativeCarePage> {
  double _hydrationLevel = 1;
  Color _hydrationColor = Colors.green; // Default color

  void _updateHydrationColor(double level) {
    setState(() {
      if (level <= 2) {
        _hydrationColor = Colors.green;
      } else if (level <= 4) {
        _hydrationColor = Colors.yellow;
      } else if (level <= 6) {
        _hydrationColor = Colors.orange;
      } else {
        _hydrationColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Postoperative Care'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Postoperative Care',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Category 1: Checking Vitals',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Blood Pressure',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Temperature',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Pulse Rate',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Oxygen Saturation Rate',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              const Text(
                'Category 2: Pain Management',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('For kids: Check from vitals'),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Pain Level (1-10)',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              const Text(
                'Category 3: Hydration Status',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Hydration Level (1-8, where 1 is hydrated and 8 is severely dehydrated)'),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  // Parse the entered value to double
                  double parsedValue = double.tryParse(value) ?? 1.0;
                  // Ensure hydration level stays within bounds (1-8)
                  if (parsedValue < 1) {
                    parsedValue = 1;
                  } else if (parsedValue > 8) {
                    parsedValue = 8;
                  }
                  // Update hydration level and color
                  _hydrationLevel = parsedValue;
                  _updateHydrationColor(parsedValue);
                },
                decoration: InputDecoration(
                  labelText: 'Enter Hydration Level (1-8)',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              Slider(
                value: _hydrationLevel,
                min: 1,
                max: 8,
                divisions: 7,
                label: _hydrationLevel.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _hydrationLevel = value;
                    _updateHydrationColor(value);
                  });
                },
                activeColor: _hydrationColor,
                inactiveColor: Colors.grey,
              ),
              Container(
                height: 50,
                color: _hydrationColor,
                child: Center(
                  child: Text(
                    'Hydration Level: ${_hydrationLevel.round()}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
