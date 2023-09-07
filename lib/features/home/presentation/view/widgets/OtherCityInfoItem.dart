import 'package:flutter/material.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';

import '../../../../../core/utils/AssetsData.dart';
import '../../../../../core/utils/Styles.dart';

class OtherCityInfoItem extends StatelessWidget {
  const OtherCityInfoItem({
    super.key,
    required this.weatherModel,
    required this.index,
  });

  final WeatherModel weatherModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weatherModel.location!.name.toString(),
          style: Styles.textstyle14bold,
        ),
        Text(
          '${weatherModel.forecast!.forecastday?[index].day!.maxtempC!.toInt()}C',
          style: Styles.textstyle14bold,
        ),
        Image.network(
          'http:${weatherModel.forecast!.forecastday![index].day!.condition!.icon}',
          width: 50,
          height: 50,
          fit: BoxFit.fill,
        ),
         Text(
          weatherModel.forecast!.forecastday![index].day!.condition!.text.toString(),
          style: Styles.textstyle14default,
        ),
      ],
    );
  }
}
