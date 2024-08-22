import 'package:clean_architecture_weather/core/error/failure.dart';
import 'package:clean_architecture_weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/domain/repository/weather_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetCurrentWeatherUseCase(this._weatherRepository);

  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String city) async {
    return await _weatherRepository.getCurrentWeather(city);
  }
}
