import 'package:flutter/material.dart';
import 'package:weather_app_new/core/utils/AssetsData.dart';
import 'package:weather_app_new/core/utils/Styles.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';

class CustomInfoWeatherItem extends StatelessWidget {
  const CustomInfoWeatherItem({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(weatherModel.current!.condition!.text.toString(),
                  style: Styles.textstyle20),
              Text(
                '${weatherModel.current!.tempC!.toInt()}C',
                style: Styles.textstyle35,
                textAlign: TextAlign.center,
              ),
              Text(
                'min: ${weatherModel.forecast!.forecastday?[0].day!.mintempC!.toInt()}C/ max: ${weatherModel.forecast!.forecastday?[0].day!.maxtempC!.toInt()}C',
                style: Styles.textstyle14default,
                textAlign: TextAlign.center,
              ),
            ],
          ),
           SizedBox(
            width: MediaQuery.of(context).size.width / 6,
          ),
          Column(
            children: [
              Image.network(
                'http:${weatherModel.current!.condition!.icon}',height: MediaQuery.of(context).size.width / 6,
                width: MediaQuery.of(context).size.width / 6,
                fit: BoxFit.fill,),
              Text(
                'wind ${weatherModel.current!.windMph!.toInt()} m/s',
                style: Styles.textstyle14default,
              )
            ],
          )
        ],
      ),
    );
  }
}
