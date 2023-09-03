import 'package:flutter/material.dart';

import '../../../../../core/utils/AssetsData.dart';
import '../../../../../core/utils/Styles.dart';

class OtherCityInfoItem extends StatelessWidget {
  const OtherCityInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Cairo',
          style: Styles.textstyle14bold,
        ),
        const Text(
          '19C',
          style: Styles.textstyle14bold,
        ),
        Image.asset(
          AssetsData.image2,
          width: 50,
          height: 50,
          fit: BoxFit.fill,
        ),
        const Text(
          'clear sky',
          style: Styles.textstyle14default,
        ),
      ],
    );
  }
}