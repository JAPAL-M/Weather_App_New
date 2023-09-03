import 'package:flutter/material.dart';

import '../../../../../core/utils/AssetsData.dart';
class CustomPhotoDesign extends StatelessWidget {
  const CustomPhotoDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25)),
        child: Image.asset(AssetsData.image1));
  }
}