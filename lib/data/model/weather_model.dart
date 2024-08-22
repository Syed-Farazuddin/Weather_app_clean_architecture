import 'package:clean_architecture_weather/domain/entities/weather.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required super.cityName,
    required super.iconCode,
    required super.temperature,
    required super.main,
    required super.description,
    required super.humidity,
    required super.pressure,
  });

  factory WeatherModel.toJson(Map<String, dynamic> json) => WeatherModel(
      cityName: json["cityName"],
      iconCode: json["iconCode"],
      temperature: json['temperature'],
      main: json["main"],
      description: 'description',
      humidity: json['humidity'],
      pressure: json['pressure']);
}
