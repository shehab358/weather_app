import 'package:flutter/material.dart';
import 'package:weather_app/screens/noweather.dart';
import 'package:weather_app/screens/searchscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Searchscreen(),
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: const NoWeatherBody(),
    );
  }
}
