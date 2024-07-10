import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '9f2c3c3e31e0499982804829241007';
  // 'https://api.weatherapi.com/v1/forecast.json?
  // key=9f2c3c3e31e0499982804829241007&q=$cityName&days=1'
  WeatherServices({required this.dio});
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJason(response.data);
      return weatherModel;
    } catch (e) {
      return null;
    }
  }
}
