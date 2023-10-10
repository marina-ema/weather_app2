part of 'weather_cubit.dart';

abstract class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final WeatherModle1 weatherModle1;

  WeatherLoaded({required this.weatherModle1});
}

final class WeatherFailed extends WeatherState {}
