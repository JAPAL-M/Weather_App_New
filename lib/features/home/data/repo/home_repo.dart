import 'package:dartz/dartz.dart';
import 'package:weather_app_new/core/errors/failures.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';
abstract class HomeRepo{
  Future<Either<Failure , WeatherModel>> fetchWeatherData();
  Future<Either<Failure , WeatherModel>> fetchSearchWeatherData({required String? searchCity});
}

