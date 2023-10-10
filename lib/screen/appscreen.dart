import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/modle/Modle.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key, required this.weatherModle1})
      : super(key: key);
  final WeatherModle1 weatherModle1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${weatherModle1.city}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'updated at ${weatherModle1.lastDate}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModle1.image}",
                  height: 100,
                ),
                Text(
                  '${weatherModle1.temp}°C',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp:${weatherModle1.maxtemp}°C',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp:${weatherModle1.mintemp}°C',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              '${weatherModle1.Weathercondition}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
