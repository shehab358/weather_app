import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    weatherModel.image.contains("https:");

    return Scaffold(
      body: Container(
        color: const Color(0xFF5da1ed),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  weatherModel.location,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Spacer(flex: 1),
                      Image.network(
                        "https:${weatherModel.image}",
                      ),
                      const Spacer(flex: 3),
                      Text(
                        weatherModel.avgTemp.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(flex: 3),
                      Column(
                        children: [
                          Text(
                            "Max Temp : ${weatherModel.maxTemp.toInt()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Min Temp : ${weatherModel.minTemp.toInt()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                ),
                Text(
                  weatherModel.condition,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

