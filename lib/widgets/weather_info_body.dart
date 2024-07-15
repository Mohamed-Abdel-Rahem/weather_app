import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/text_widget.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      /*  appBar: AppBar(
        title: const TextWidget(
          text: "Weather App",
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.blue,
      ),*/
      body: Padding(
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
              text: weatherModel.date,
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
                  weatherModel.image.toString(),
                ),
                const TextWidget(
                  text: "17",
                  color: Colors.black,
                  size: 32,
                  fontWeight: true,
                ),
                const Column(
                  children: [
                    TextWidget(
                      text: "Maxtemp: 24",
                      color: Colors.black,
                      size: 16,
                    ),
                    TextWidget(
                      text: "Mintemp: 16",
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
            const TextWidget(
              text: "Ligh Rain",
              color: Colors.black,
              size: 32,
              fontWeight: true,
            ),
          ],
        ),
      ),
    );
  }
}
