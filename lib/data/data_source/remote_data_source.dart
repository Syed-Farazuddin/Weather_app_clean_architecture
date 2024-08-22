// import 'package:http/http.dart'
import 'dart:convert';

import 'package:clean_architecture_weather/core/constants.dart';
import 'package:clean_architecture_weather/core/error/failure.dart';
import 'package:clean_architecture_weather/data/weather_model.dart';
import 'package:http/http.dart';

abstract class RemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String cityName);
}

class RemoteDataSourceImp extends RemoteDataSource {
  @override
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final response = await get(Uri.parse(Constants.url(cityName)));
    if (response.statusCode == 200) {
      return WeatherModel.toJson(json.decode(response.body));
    } else {
      throw const ServerFailure("Server error: ");
    }
  }
}
