import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WEATHER",
          style: TextStyle(
            color: Color(0xFFA7E6FF),
          ),
        ),
        backgroundColor: const Color(0xFF050C9C),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xFFA7E6FF),
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFA7E6FF),
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start Searching for a city ",
                style: TextStyle(
                    color: Color(0xFF535C91),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "to get It's weather",
                style: TextStyle(
                    color: Color(0xFF535C91),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
