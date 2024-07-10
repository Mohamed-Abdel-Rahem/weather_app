import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/text_widget.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                    return SearchView();
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
      body: NoWeatherBody(),
    );
  }
}
