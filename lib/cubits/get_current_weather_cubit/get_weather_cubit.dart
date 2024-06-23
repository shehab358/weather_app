import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());

  fetchWeather({required String value}) async {
    try {
      WeatherModel weather =
          await WeatherServices(Dio()).getCurrentWeather(city: value);
      emit(WeatherLoadedState(weather));
    } catch (e) {
      emit(WeatherFailedState(e.toString()));
    }
  }
}
