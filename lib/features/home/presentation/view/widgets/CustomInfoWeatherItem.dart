import 'package:flutter/material.dart';
import 'package:weather_app_new/core/utils/AssetsData.dart';
import 'package:weather_app_new/core/utils/Styles.dart';
class CustomInfoWeatherItem extends StatelessWidget {
  const CustomInfoWeatherItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child:  Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'overcat clouds',
                style: Styles.textstyle20
              ),
              Text(
                '20C',
                style: Styles.textstyle35,
                textAlign: TextAlign.center,
              ),
              Text(
                'min: 16C/ max: 20C',
                style: Styles.textstyle14default,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(width: 50,),
           Column(
             children: [
               Image.asset(AssetsData.image2,height: 80,width: 80,fit: BoxFit.fill,),
              const Text('wind 2.51 m/s',style: Styles.textstyle14default,)
             ],
           )
        ],
      ),
    );
  }
}