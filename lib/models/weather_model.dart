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
      required this.avgTemp}
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      date: json['current']['last_updated'] ?? 'N/A',
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'] ?? '',
      location: json["location"]['name'] ?? 'Unknown Location',
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'] ?? 'No Condition',
      maxTemp: (json['forecast']['forecastday'][0]['day']['maxtemp_c'] ?? 0.0).toDouble(),
      minTemp: (json['forecast']['forecastday'][0]['day']['mintemp_c'] ?? 0.0).toDouble(),
      avgTemp: (json['forecast']['forecastday'][0]['day']['avgtemp_c'] ?? 0.0).toDouble(),
    );
  }
}
