import 'package:dio/dio.dart';

import 'package:weather_app/model/search_place.dart';

import '../model/area_model.dart';

var dio = Dio();

Future<SearchArea?> getplace(SearchQuery searchQuery) async {
  var response = await dio.get(
      ' https://forward-reverse-geocoding.p.rapidapi.com/v1/forward?$searchQuery');

  if (response.statusCode == 200) {
    var placeJsons = response.data;
    var place = SearchArea.fromJson(placeJsons);
    return place;
  }

  return null;
}
