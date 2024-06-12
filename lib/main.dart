import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/view/homeview.dart';

void main() {
  runApp(
    WeatherApp()
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
          home: Homescreen(),
        ),
    );
  }
}