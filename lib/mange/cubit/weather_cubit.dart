import 'package:bloc/bloc.dart';
import 'package:flutter_application_6/modle/Modle.dart';
import 'package:flutter_application_6/services/weather_service.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  getWeather({required String city}) async {
    try {
      WeatherModle1 weatherModle1 =
          await WeatherService().getWatherdata(city: city);
      emit(WeatherLoaded(weatherModle1: weatherModle1));
    } on Exception catch (e) {
      emit(WeatherFailed());
    }
  }
}
