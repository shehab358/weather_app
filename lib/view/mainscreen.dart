import 'package:flutter/material.dart';
import 'package:weather_app/screens/searchscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          "WEATHER",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF5da1ed),
      ),
      body: const Searchscreen(),
    );
  }
}
