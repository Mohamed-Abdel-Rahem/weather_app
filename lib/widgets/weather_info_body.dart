import 'package:flutter/material.dart';
import 'package:weather_app/widgets/text_widget.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
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
            const TextWidget(
              text: "Alexandria",
              color: Colors.black,
              size: 32,
              fontWeight: true,
            ),
            const TextWidget(
              text: "updated at 23:46",
              color: Colors.black,
              size: 24,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/cloudy.png',
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
