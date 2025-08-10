import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Historial Page',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}