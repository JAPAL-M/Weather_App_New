import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weather_app_new/constant.dart';
import 'package:weather_app_new/core/utils/apiservices.dart';
import 'package:weather_app_new/features/home/data/repo/home_repo_impl.dart';
import 'package:weather_app_new/features/home/presentation/view/home_view.dart';
import 'package:weather_app_new/features/home/presentation/viewmodel/home_cubit.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> HomeCubit(HomeRepoImpl(ApiServices(Dio())))..fetchDataWeather())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(scaffoldBackgroundColor: primaryColor),
        home: const HomeView(),
      ),
    );
  }
}
