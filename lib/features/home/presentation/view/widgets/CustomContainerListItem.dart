import 'package:flutter/material.dart';

import '../../../../../core/utils/CustomTextFormField.dart';
import 'CustomListInfoItem.dart';
class CustomContainerListItem extends StatelessWidget {
  const CustomContainerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 90.0,bottom: 20 ,left: 20,right: 20),
      child: Column(
        children: [
          const CustomTextFormField(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.width / 2.2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: const CustomListInfoItem(),
          )
        ],
      ),
    );
  }
}