import 'package:dio/dio.dart';
//forecast.json?key=&q=London&days=5&aqi=no&alerts=no
class ApiServices{
  final Dio _dio;
  final _baseUrl  = 'http://api.weatherapi.com/v1/';
  ApiServices(this._dio);
  
  Future<Map<String,dynamic>> get({required String? endpoints }) async{
   var response = await _dio.get('$_baseUrl$endpoints');

   return response.data;
  }
}