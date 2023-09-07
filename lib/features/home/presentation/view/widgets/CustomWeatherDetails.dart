import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'CustomMyChart.dart';
import 'OtherCityListView.dart';
class CustomWeatherDetails extends StatelessWidget {
  const CustomWeatherDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OTHER DAYS',
            style: Styles.textstyle14bold,
          ),
          SizedBox(
            height: 5,
          ),
          OtherCityListView(),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('FORCAST NEXT 5 DAYS',style: Styles.textstyle15bold,),
              Spacer(),
              Icon(Icons.next_plan_outlined)
            ],
          ),
          SizedBox(height: 5,),
          CustomMyChart()
        ],
      ),
    );
  }
}