import 'package:flutter/material.dart';
import 'package:weather_app/screens/searchscreen.dart';
import 'package:weather_app/screens/startscreen.dart';
import 'package:weather_app/screens/weather_info.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WEATHER",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF5da1ed),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WeatherInfo(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Startscreen(),
    );
  }
}
