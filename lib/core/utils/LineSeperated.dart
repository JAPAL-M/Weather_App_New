import 'package:flutter/material.dart';
class LineSeperated extends StatelessWidget {
  const LineSeperated({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade100,
    );
  }
}