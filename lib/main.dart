import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(PropertyInsuranceApp());
}

class PropertyInsuranceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Insurance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
