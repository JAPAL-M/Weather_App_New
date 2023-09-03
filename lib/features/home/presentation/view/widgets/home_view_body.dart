import 'package:flutter/material.dart';
import 'package:weather_app_new/constant.dart';
import 'package:weather_app_new/core/utils/AssetsData.dart';
import 'package:weather_app_new/core/utils/Styles.dart';

import 'CustomContainerListItem.dart';
import 'CustomPhotoDesign.dart';
import 'OtherCityListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CustomPhotoDesign(),
            CustomContainerListItem(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'OTHER CITY',
            style: Styles.textstyle14bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        OtherCityListView(),
      ],
    );
  }
}






