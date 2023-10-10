import 'package:dio/dio.dart';
import 'package:flutter_application_6/modle/Modle.dart';

class WeatherService {
  late WeatherModle1 weatherModle1;
  Dio dio = Dio();
  String baseurl = "http://api.weatherapi.com/v1";
  String Apikey = "ebde3f6ba6e94f52bf2104645232009";

  Future<WeatherModle1> getWatherdata({required String city}) async {
    final response = await dio.get(
        '$baseurl/forecast.json?key=$Apikey &q=$city&days=1&aqi=no&alerts=no');
    weatherModle1 = WeatherModle1.fromJost(response.data);
    return weatherModle1;
  }
}
