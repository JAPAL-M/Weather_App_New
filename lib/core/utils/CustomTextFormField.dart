import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hoverColor: Colors.white,
          border: OutlineInputBorder(),
          labelText: 'Search',
          labelStyle: TextStyle(color: Colors.white)),
    );
  }
}