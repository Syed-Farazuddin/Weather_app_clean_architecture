import 'dart:io';

import 'package:clean_architecture_weather/core/error/failure.dart';
import 'package:clean_architecture_weather/data/data_source/remote_data_source.dart';
import 'package:clean_architecture_weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/domain/repository/weather_repository.dart';
import 'package:dartz/dartz.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final RemoteDataSource source;
  WeatherRepositoryImpl({required this.source});
  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String city) async {
    try {
      final result = await source.getCurrentWeather(city);
      return Right(result);
    } on ServerFailure {
      return const Left(
          ServerFailure("An Error Occured while fetching the data"));
    } on SocketException {
      return const Left(ConnectionFailure("Connection Failed"));
    }
  }
}
