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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text(
            'OTHER DAYS',
            style: Styles.textstyle14bold,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 100,
          ),
          const  OtherCityListView(),
          SizedBox(height: MediaQuery.of(context).size.height / 100,),
          Row(
            children: [
              Text('FORCAST NEXT 5 DAYS',style: Styles.textstyle15bold,),
              const Spacer(),
              const Icon(Icons.next_plan_outlined)
            ],
          ),
          const CustomMyChart()
        ],
      ),
    );
  }
}