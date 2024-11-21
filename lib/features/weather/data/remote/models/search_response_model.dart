import 'package:json_annotation/json_annotation.dart';

part 'search_response_model.g.dart';

@JsonSerializable()
class CityResponseModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "region")
  String? region;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "lat")
  double? lat;
  @JsonKey(name: "lon")
  double? lon;
  @JsonKey(name: "url")
  String? url;

  CityResponseModel({
    this.id,
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.url,
  });

  factory CityResponseModel.fromJson(Map<String, dynamic> json) => _$CityResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityResponseModelToJson(this);
}
