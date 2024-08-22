import 'package:clean_architecture_weather/core/error/failure.dart';
import 'package:clean_architecture_weather/domain/entities/weather.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String city);
}
