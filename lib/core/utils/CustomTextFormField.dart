import 'package:flutter/material.dart';
import 'package:weather_app_new/core/utils/Styles.dart';
import 'package:weather_app_new/features/home/presentation/viewmodel/home_cubit.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: HomeCubit.get(context).controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: (){
          if(HomeCubit.get(context).controller.text.isNotEmpty) {
            HomeCubit.get(context).fetchSearchDataWeather();
          }
        }, icon: const Icon(Icons.search,color: Colors.white,size: 30,)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hoverColor: Colors.white,
          border: const OutlineInputBorder(),
          labelText: 'Search',
          labelStyle: const TextStyle(color: Colors.white)),
    );
  }
}