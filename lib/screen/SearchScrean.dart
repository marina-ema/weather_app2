import 'package:flutter/material.dart';
import 'package:flutter_application_6/mange/cubit/weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            onFieldSubmitted: (value) {
              var weathercubit = BlocProvider.of<WeatherCubit>(context);
              weathercubit.getWeather(city: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                labelText: "City Name ",
                prefix: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.location_city),
                ),
                border: OutlineInputBorder()),
          )
        ]),
      ),
    );
  }
}
