import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String? cityName;
  final String? main;
  final String? description;
  final String? iconCode;
  final double? temperature;
  final int? pressure;
  final int? humidity;

  const WeatherEntity({
    required this.cityName,
    required this.iconCode,
    required this.temperature,
    required this.main,
    required this.description,
    required this.humidity,
    required this.pressure,
  });

  @override
  List<Object?> get props => [
        cityName,
        iconCode,
        temperature,
        main,
        description,
        humidity,
        pressure,
      ];
}
