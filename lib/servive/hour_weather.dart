import 'package:dio/dio.dart';
import 'package:weather_app/model/hour.dart';

var dio = Dio();

Future<HourWeather?> getHourlyWeaather() async {
  var response = await dio.get(
      'api.openweathermap.org/data/2.5/forecast?lat=44.4&lon=89.9&appid=67c3eb7d595b1778a9fd5a7cf78b8ce4');

  if (response.statusCode == 200) {
    var placeJsons = response.data;
    var place = HourWeather.fromJson(placeJsons);
    return place;
  }

  return null;
}
