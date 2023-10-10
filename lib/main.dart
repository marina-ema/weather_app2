import 'package:flutter/material.dart';
import 'package:flutter_application_6/mange/cubit/weather_cubit.dart';
import 'package:flutter_application_6/screen/HomeScrean.dart';
import 'package:flutter_application_6/screen/appscreen.dart';
import 'package:flutter_application_6/screen/noweatherbody.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomeScrean()),
    );
  }
}
