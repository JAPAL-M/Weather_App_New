
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';
import 'package:weather_app_new/features/home/data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  TextEditingController controller = TextEditingController();

  final HomeRepo homeRepo;
  Future<void> fetchDataWeather() async{
    emit(HomeLoading());
 var result = await homeRepo.fetchWeatherData();
 result.fold((fail){
   emit(HomeFailure(fail.errMessage));
 }, (weatherModel){
   emit(HomeSuccess(weatherModel));
 });
  }

  Future<void> fetchSearchDataWeather() async{
    emit(HomeLoading());
 var result = await homeRepo.fetchSearchWeatherData(searchCity: controller.text);
 result.fold((fail){
   emit(HomeFailure(fail.errMessage));
 }, (weatherModel){
   emit(HomeSuccess(weatherModel));
 });
  }
}


