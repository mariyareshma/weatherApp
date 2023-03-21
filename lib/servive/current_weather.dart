import 'package:dio/dio.dart';
import 'package:weather_app/model/current.dart';

var dio = Dio();

Future<Main?> getCurrentWeather() async {
  var response = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=67c3eb7d595b1778a9fd5a7cf78b8ce4');

  if (response.statusCode == 200) {
    var placeJsons = response.data;
    var place = Main.fromJson(placeJsons);
    return place;
  }

  return null;
}
