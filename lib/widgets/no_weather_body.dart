import 'package:flutter/material.dart';
import 'package:weather_app/widgets/text_widget.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
        title: const TextWidget(
          text: "Weather",
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.blue,
      ),*/
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: "there is no weather 😔 start",
              color: Colors.black,
              size: 30,
            ),
            TextWidget(
              text: "searching now 🔍",
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
