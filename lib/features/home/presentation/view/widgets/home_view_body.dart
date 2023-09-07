import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_app_new/constant.dart';
import 'package:weather_app_new/core/utils/AssetsData.dart';
import 'package:weather_app_new/core/utils/Styles.dart';

import 'CustomContainerListItem.dart';
import 'CustomPhotoDesign.dart';
import 'CustomWeatherDetails.dart';
import 'OtherCityListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CustomPhotoDesign(),
              CustomContainerListItem(),
            ],
          ),
          CustomWeatherDetails()
        ],
      ),
    );
  }
}











