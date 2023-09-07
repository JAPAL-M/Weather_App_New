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
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.only(top: 6),
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: OtherCityInfoItem(weatherModel: weatherModel, index: index,),
    );
  }
}
