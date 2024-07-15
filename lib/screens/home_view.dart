import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/text_widget.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 40,
            ),
          ),
        ],
        title: const TextWidget(
          text: "Weather App",
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.blue,
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherInitialState) {
          return const NoWeatherBody();
        } else if (state is WeatherLoadedState) {
          return WeatherInfoBody();
        } else {
          return const Text('opps there was an error!');
        }
      }),
    );
  }
}
/*
1- create states 
2- create cubit 
3- create function 
4- provide cubit 
5- integrate cubit 
6- trigger cubit
*/