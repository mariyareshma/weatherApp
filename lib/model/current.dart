class CurrentWeather {
  CurrentWeather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  final Coord? coord;
  final List<Weather> weather;
  final String? base;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Weathers? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
      weather: json["weather"] == null
          ? []
          : List<Weather>.from(
              json["weather"]!.map((x) => Weather.fromJson(x))),
      base: json["base"],
      main: json["main"] == null ? null : Main.fromJson(json["main"]),
      visibility: json["visibility"],
      wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
      clouds: json["clouds"] == null ? null : Weathers.fromJson(json["clouds"]),
      dt: json["dt"],
      sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
      timezone: json["timezone"],
      id: json["id"],
      name: json["name"],
      cod: json["cod"],
    );
  }
}

class Weathers {
  Weathers({
    required this.all,
  });

  final int? all;

  factory Weathers.fromJson(Map<String, dynamic> json) {
    return Weathers(
      all: json["all"],
    );
  }
}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });

  final double? lon;
  final double? lat;

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: json["lon"],
      lat: json["lat"],
    );
  }
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
  final int? grndLevel;

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json["temp"],
      feelsLike: json["feels_like"],
      tempMin: json["temp_min"],
      tempMax: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      seaLevel: json["sea_level"],
      grndLevel: json["grnd_level"],
    );
  }
}

class Sys {
  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  final int? type;
  final int? id;
  final String? country;
  final int? sunrise;
  final int? sunset;

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json["type"],
      id: json["id"],
      country: json["country"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
    );
  }
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json["id"],
      main: json["main"],
      description: json["description"],
      icon: json["icon"],
    );
  }
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final double? speed;
  final int? deg;
  final double? gust;

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json["speed"],
      deg: json["deg"],
      gust: json["gust"],
    );
  }
}
