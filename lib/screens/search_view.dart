import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';
import 'package:weather_app/widgets/text_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: "Search a City",
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onSubmitted: (value) async {
                WeatherModel weatherModel = await WeatherServices(
                  dio: Dio(),
                ).getCurrentWeather(
                  cityName: value,
                );
                log(weatherModel.cityName);
                Navigator.pop(context);
              },
              maxLength: 20,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 10,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                labelText: "Search",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter City Name",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
