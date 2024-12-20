import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/text_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: "Search a City",
          color: Colors.black,
          size: 30,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onSubmitted: (value) {
                var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: value);
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
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.black,
                //   ),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.amber,
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
