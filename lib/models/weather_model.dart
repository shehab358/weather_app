class WeatherModel {
  final String location;
  final String date;
  final String image;
  final String condition;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;

  WeatherModel(
      {required this.date,
      required this.image,
      required this.location,
      required this.condition,
      required this.maxTemp,
      required this.minTemp,
      required this.avgTemp});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        date: json['current']['last_updated'],
        image: json['forecast']['forecastday'][0]['day']['icon'],
        location: json["location"]['name'],
        condition: json['forecast']['forecastday'][0]['day']['condition'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c']);
  }
}
