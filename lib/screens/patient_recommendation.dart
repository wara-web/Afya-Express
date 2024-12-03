import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: PatientRecommendation(),
  ));
}



class PatientRecommendation extends StatefulWidget {
  const PatientRecommendation ({Key? key}) : super(key:  key);

  @override
  State<PatientRecommendation> createState() => _PatientRecommendationState();
}

class _PatientRecommendationState extends State<PatientRecommendation> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
