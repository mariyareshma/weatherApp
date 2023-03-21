class SearchArea {
  SearchArea({
    required this.importance,
    required this.licence,
    required this.searchAreaClass,
    required this.osmId,
    required this.displayName,
    required this.osmType,
    required this.lon,
    required this.placeId,
    required this.boundingbox,
    required this.lat,
    required this.type,
  });

  final double? importance;
  final String? licence;
  final String? searchAreaClass;
  final int? osmId;
  final String? displayName;
  final String? osmType;
  final String? lon;
  final int? placeId;
  final List<String> boundingbox;
  final String? lat;
  final String? type;

  factory SearchArea.fromJson(Map<String, dynamic> json) {
    return SearchArea(
      importance: json["importance"],
      licence: json["licence"],
      searchAreaClass: json["class"],
      osmId: json["osm_id"],
      displayName: json["display_name"],
      osmType: json["osm_type"],
      lon: json["lon"],
      placeId: json["place_id"],
      boundingbox: json["boundingbox"] == null
          ? []
          : List<String>.from(json["boundingbox"]!.map((x) => x)),
      lat: json["lat"],
      type: json["type"],
    );
  }
}
