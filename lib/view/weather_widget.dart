import 'package:flutter/material.dart';

import '../model/current.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key, this.weather}) : super(key: key);
  final Main? weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weather!.temp.toString()),
        Text(weather!.feelsLike.toString()),
        Text(weather!.tempMax.toString()),
        Text(weather!.tempMax.toString()),
        Text(weather!.tempMin.toString()),
      ],
    );
  }
}
