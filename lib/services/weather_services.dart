import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com";
  final String apiKey = '7e74740cad0340cd982183017240706';
  WeatherServices({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String city}) async {
    Response response = await dio.get(
        '$baseUrl/v1/forecast.json?key=$apiKey&q=$city&days=1');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel;
  }
}
