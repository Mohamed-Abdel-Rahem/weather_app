import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  //sent intial state when open app
  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherServices(
        dio: Dio(),
      ).getCurrentWeather(
        cityName: cityName,
      );
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
