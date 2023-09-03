import 'package:flutter/material.dart';

import '../../../../../core/utils/LineSeperated.dart';
import '../../../../../core/utils/Styles.dart';
import 'CustomInfoWeatherItem.dart';
class CustomListInfoItem extends StatelessWidget {
  const CustomListInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 40),
      child: Column(
        children: [
          Text(
            'ZAGAZIG',
            style: Styles.textstyle20,
          ),
          Text(
            'Monday,May 16',
            style: Styles.textstyle14default,
          ),
          LineSeperated(),
          SizedBox(height: 5,),
          CustomInfoWeatherItem(),
        ],
      ),
    );
  }
}