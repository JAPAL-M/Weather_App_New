import 'package:flutter/material.dart';
import 'package:weather_app_new/features/home/data/model/WeatherModel.dart';

import 'OtherCityInfoItem.dart';

class OtherCityListItem extends StatelessWidget {
  const OtherCityListItem({
    super.key, required this.weatherModel, required this.index,
  });
final WeatherModel weatherModel;
final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3.5,
      width: MediaQuery.of(context).size.width / 3.5,
      child: Card(
        elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          child: OtherCityInfoItem(weatherModel: weatherModel, index: index,)),
    );
  }
}
