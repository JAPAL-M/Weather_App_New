import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_new/features/home/presentation/viewmodel/home_cubit.dart';

import '../../../../../core/utils/LineSeperated.dart';
import '../../../../../core/utils/Styles.dart';
import 'CustomInfoWeatherItem.dart';

class CustomListInfoItem extends StatelessWidget {
  const CustomListInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: MediaQuery.of(context).size.width / 20),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if(state is HomeSuccess){
            return Column(
              children: [
                Text(
                  state.weatherModel.location!.name.toString(),
                  style: Styles.textstyle20,
                ),
                Text(
                  state.weatherModel.forecast!.forecastday![0].date.toString(),
                  style: Styles.textstyle14default,
                ),
                const LineSeperated(),
                 SizedBox(height: MediaQuery.of(context).size.height / 60,),
                CustomInfoWeatherItem(weatherModel: state.weatherModel,),
              ],
            );
          }else if(state is HomeFailure){
            return Center(child: Text(state.errmessage.toString(),style: Styles.textstyle20,));
          }else{
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}