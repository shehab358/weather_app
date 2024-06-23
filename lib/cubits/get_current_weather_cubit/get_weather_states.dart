import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailedState extends WeatherState {
  final String errMsg;

  WeatherFailedState(this.errMsg);

}
