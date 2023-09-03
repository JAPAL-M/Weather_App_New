import 'package:flutter/material.dart';

import 'other_city_list_item.dart';

class OtherCityListView extends StatelessWidget {
  const OtherCityListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3.5,
      child: ListView.separated(
        itemBuilder: (context, index) => const OtherCityListItem(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}