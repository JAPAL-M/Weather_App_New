import 'package:flutter/material.dart';

import 'OtherCityInfoItem.dart';

class OtherCityListItem extends StatelessWidget {
  const OtherCityListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.only(top: 6),
      height: MediaQuery.of(context).size.width / 3.5,
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
      child: const OtherCityInfoItem(),
    );
  }
}
