import 'package:dio/dio.dart';
import 'package:weather_app/model/area_model.dart';

import '../model/search_place.dart';

var dio = Dio();
Future<SearchArea?> getPlace(SearchQuery searchQuery) async {
  var response = await dio.get(
      '  https://forward-reverse-geocoding.p.rapidapi.com/v1/forward?${searchQuery.name}',
      queryParameters: {'name': searchQuery},
      options: Options(
        headers: {
          'X-RapidAPI-Key':
              'ad9b6066b1mshd5756570e550bb8p160398jsndfd6aec09495',
          'X-RapidAPI-Host': 'low-carb-recipes.p.rapidapi.com'
        },
      ));
  if (response.statusCode == 200) {
    var placeJsons = response.data;
    var placeObj = SearchArea.fromJson(placeJsons);
    return placeObj;
  }
  return null;
}
