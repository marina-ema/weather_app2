import 'package:flutter/material.dart';
import 'package:flutter_application_6/mange/cubit/weather_cubit.dart';
import 'package:flutter_application_6/screen/SearchScrean.dart';
import 'package:flutter_application_6/screen/appscreen.dart';
import 'package:flutter_application_6/screen/noweatherbody.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScrean(),
                    ));
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherInitial) {
          return NoWeatherBody();
        } else if (state is WeatherLoaded) {
          return WeatherScreen(weatherModle1: state.weatherModle1);
        } else {
          return NoWeatherBody();
        }
      }),
    );
  }
}
