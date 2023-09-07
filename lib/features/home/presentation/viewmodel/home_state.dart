part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
  const HomeState();
}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeSuccess extends HomeState {
  final WeatherModel weatherModel;
  const HomeSuccess(this.weatherModel);
}
class HomeFailure extends HomeState {
  final String errmessage;
 const HomeFailure(this.errmessage);
}
