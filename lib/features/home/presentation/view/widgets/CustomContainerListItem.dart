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
           SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 2.2,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                child: const CustomListInfoItem()),
          )
        ],
      ),
    );
  }
}