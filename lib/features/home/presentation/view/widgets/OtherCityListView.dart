import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_new/core/utils/Styles.dart';
import 'package:weather_app_new/features/home/presentation/viewmodel/home_cubit.dart';

import 'other_city_list_item.dart';

class OtherCityListView extends StatelessWidget {
  const OtherCityListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3.5,
      child: BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    if (state is HomeSuccess) {
      return ListView.separated(
        itemBuilder: (context, index) => OtherCityListItem(weatherModel: state.weatherModel,index: index,),
        separatorBuilder: (context, index) => SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      );
    }else if(state is HomeFailure){
      return Center(child: Text(state.errmessage.toString(),style: Styles.textstyle35,));
    }else{
      return const CircularProgressIndicator();
    }
  },
),
    );
  }
}