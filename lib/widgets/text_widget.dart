import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      this.fontWeight = false});
  final String text;
  final Color color;
  final double size;
  final bool fontWeight; // Removed the nullable type

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight
            ? FontWeight.bold
            : FontWeight.normal, // Use conditional expression
      ),
    );
  }
}
