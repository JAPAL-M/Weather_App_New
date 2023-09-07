import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_new/constant.dart';
import 'package:weather_app_new/core/errors/failures.dart';
import 'package:weather_app_new/core/utils/apiservices.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';
import 'package:weather_app_new/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, WeatherModel>> fetchWeatherData() async{
    try{
      WeatherModel weatherModel;
      var data = await apiServices.get(endpoints: 'forecast.json?key=$apikey&q=Hehia&days=5&aqi=no&alerts=no');
      try{
       weatherModel = WeatherModel.fromJson(data);
      }catch(e){
        weatherModel = WeatherModel.fromJson(data);
      }
      return right(weatherModel);

    }catch(e){
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString()));
    }

  }

  @override
  Future<Either<Failure, WeatherModel>> fetchSearchWeatherData({required String? searchCity}) async{
    try{
      WeatherModel weatherModel;
      var data = await apiServices.get(endpoints: 'forecast.json?key=$apikey&q=$searchCity&days=5&aqi=no&alerts=no');
      try{
        weatherModel = WeatherModel.fromJson(data);
      }catch(e){
        weatherModel = WeatherModel.fromJson(data);
      }
      return right(weatherModel);

    }catch(e){
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString()));
    }
  }

}