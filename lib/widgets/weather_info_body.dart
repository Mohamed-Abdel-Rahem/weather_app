import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/text_widget.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    weatherModel.image!.contains('https');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getThemeColor(weatherModel.weatherCondition),
              getThemeColor(weatherModel.weatherCondition)[300]!,
              getThemeColor(weatherModel.weatherCondition)[50]!
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: weatherModel.cityName,
                color: Colors.black,
                size: 32,
                fontWeight: true,
              ),
              TextWidget(
                text:
                    'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                color: Colors.black,
                size: 24,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https:${weatherModel.image!}',
                  ),
                  TextWidget(
                    text: weatherModel.temp.toString(),
                    color: Colors.black,
                    size: 32,
                    fontWeight: true,
                  ),
                  Column(
                    children: [
                      TextWidget(
                        text: 'Maxtemp: ${weatherModel.maxTemp.round()}',
                        color: Colors.black,
                        size: 16,
                      ),
                      TextWidget(
                        text: 'Mintemp: ${weatherModel.minTemp.round()}',
                        color: Colors.black,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              TextWidget(
                text: weatherModel.weatherCondition,
                color: Colors.black,
                size: 32,
                fontWeight: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

DateTime stringToDateTime(String value) {
  return DateTime.parse(value);
}
