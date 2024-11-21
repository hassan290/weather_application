import 'package:json_annotation/json_annotation.dart';

part 'weather_response_model.g.dart';

@JsonSerializable()
class WeatherResponseModel {
  @JsonKey(name: "location")
  Location? location;
  @JsonKey(name: "current")
  Current? current;
  @JsonKey(name: "forecast")
  Forecast? forecast;
  @JsonKey(name: "alerts")
  Alerts? alerts;

  WeatherResponseModel({
    this.location,
    this.current,
    this.forecast,
    this.alerts,
  });

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseModelToJson(this);
}

@JsonSerializable()
class Alerts {
  @JsonKey(name: "alert")
  List<Alert>? alert;

  Alerts({
    this.alert,
  });

  factory Alerts.fromJson(Map<String, dynamic> json) => _$AlertsFromJson(json);

  Map<String, dynamic> toJson() => _$AlertsToJson(this);
}

@JsonSerializable()
class Alert {
  @JsonKey(name: "headline")
  String? headline;
  @JsonKey(name: "msgtype")
  String? msgtype;
  @JsonKey(name: "severity")
  String? severity;
  @JsonKey(name: "urgency")
  String? urgency;
  @JsonKey(name: "areas")
  String? areas;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "certainty")
  String? certainty;
  @JsonKey(name: "event")
  String? event;
  @JsonKey(name: "note")
  String? note;
  @JsonKey(name: "effective")
  DateTime? effective;
  @JsonKey(name: "expires")
  DateTime? expires;
  @JsonKey(name: "desc")
  String? desc;
  @JsonKey(name: "instruction")
  String? instruction;

  Alert({
    this.headline,
    this.msgtype,
    this.severity,
    this.urgency,
    this.areas,
    this.category,
    this.certainty,
    this.event,
    this.note,
    this.effective,
    this.expires,
    this.desc,
    this.instruction,
  });

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);

  Map<String, dynamic> toJson() => _$AlertToJson(this);
}

@JsonSerializable()
class Current {
  @JsonKey(name: "last_updated_epoch")
  int? lastUpdatedEpoch;
  @JsonKey(name: "last_updated")
  String? lastUpdated;
  @JsonKey(name: "temp_c")
  double? tempC;
  @JsonKey(name: "temp_f")
  double? tempF;
  @JsonKey(name: "is_day")
  int? isDay;
  @JsonKey(name: "condition")
  Condition? condition;
  @JsonKey(name: "wind_mph")
  double? windMph;
  @JsonKey(name: "wind_kph")
  double? windKph;
  @JsonKey(name: "wind_degree")
  int? windDegree;
  @JsonKey(name: "wind_dir")
  String? windDir;
  @JsonKey(name: "pressure_mb")
  int? pressureMb;
  @JsonKey(name: "pressure_in")
  double? pressureIn;
  @JsonKey(name: "precip_mm")
  int? precipMm;
  @JsonKey(name: "precip_in")
  int? precipIn;
  @JsonKey(name: "humidity")
  int? humidity;
  @JsonKey(name: "cloud")
  int? cloud;
  @JsonKey(name: "feelslike_c")
  double? feelslikeC;
  @JsonKey(name: "feelslike_f")
  double? feelslikeF;
  @JsonKey(name: "windchill_c")
  double? windchillC;
  @JsonKey(name: "windchill_f")
  double? windchillF;
  @JsonKey(name: "heatindex_c")
  double? heatindexC;
  @JsonKey(name: "heatindex_f")
  double? heatindexF;
  @JsonKey(name: "dewpoint_c")
  double? dewpointC;
  @JsonKey(name: "dewpoint_f")
  double? dewpointF;
  @JsonKey(name: "vis_km")
  int? visKm;
  @JsonKey(name: "vis_miles")
  int? visMiles;
  @JsonKey(name: "uv")
  double? uv;
  @JsonKey(name: "gust_mph")
  double? gustMph;
  @JsonKey(name: "gust_kph")
  double? gustKph;
  @JsonKey(name: "air_quality")
  Map<String, double>? airQuality;
  @JsonKey(name: "time_epoch")
  int? timeEpoch;
  @JsonKey(name: "time")
  String? time;
  @JsonKey(name: "snow_cm")
  int? snowCm;
  @JsonKey(name: "will_it_rain")
  int? willItRain;
  @JsonKey(name: "chance_of_rain")
  int? chanceOfRain;
  @JsonKey(name: "will_it_snow")
  int? willItSnow;
  @JsonKey(name: "chance_of_snow")
  int? chanceOfSnow;
  @JsonKey(name: "short_rad")
  double? shortRad;
  @JsonKey(name: "diff_rad")
  double? diffRad;

  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
    this.airQuality,
    this.timeEpoch,
    this.time,
    this.snowCm,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.shortRad,
    this.diffRad,
  });

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Condition {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "code")
  int? code;

  Condition({
    this.text,
    this.icon,
    this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Forecast {
  @JsonKey(name: "forecastday")
  List<Forecastday>? forecastday;

  Forecast({
    this.forecastday,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

@JsonSerializable()
class Forecastday {
  @JsonKey(name: "date")
  DateTime? date;
  @JsonKey(name: "date_epoch")
  int? dateEpoch;
  @JsonKey(name: "day")
  Day? day;
  @JsonKey(name: "astro")
  Astro? astro;
  @JsonKey(name: "hour")
  List<Current>? hour;

  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);
}

@JsonSerializable()
class Astro {
  @JsonKey(name: "sunrise")
  String? sunrise;
  @JsonKey(name: "sunset")
  String? sunset;
  @JsonKey(name: "moonrise")
  String? moonrise;
  @JsonKey(name: "moonset")
  String? moonset;
  @JsonKey(name: "moon_phase")
  String? moonPhase;
  @JsonKey(name: "moon_illumination")
  int? moonIllumination;
  @JsonKey(name: "is_moon_up")
  int? isMoonUp;
  @JsonKey(name: "is_sun_up")
  int? isSunUp;

  Astro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);

  Map<String, dynamic> toJson() => _$AstroToJson(this);
}

@JsonSerializable()
class Day {
  @JsonKey(name: "maxtemp_c")
  double? maxtempC;
  @JsonKey(name: "maxtemp_f")
  double? maxtempF;
  @JsonKey(name: "mintemp_c")
  double? mintempC;
  @JsonKey(name: "mintemp_f")
  double? mintempF;
  @JsonKey(name: "avgtemp_c")
  double? avgtempC;
  @JsonKey(name: "avgtemp_f")
  double? avgtempF;
  @JsonKey(name: "maxwind_mph")
  double? maxwindMph;
  @JsonKey(name: "maxwind_kph")
  double? maxwindKph;
  @JsonKey(name: "totalprecip_mm")
  int? totalprecipMm;
  @JsonKey(name: "totalprecip_in")
  int? totalprecipIn;
  @JsonKey(name: "totalsnow_cm")
  int? totalsnowCm;
  @JsonKey(name: "avgvis_km")
  int? avgvisKm;
  @JsonKey(name: "avgvis_miles")
  int? avgvisMiles;
  @JsonKey(name: "avghumidity")
  int? avghumidity;
  @JsonKey(name: "daily_will_it_rain")
  int? dailyWillItRain;
  @JsonKey(name: "daily_chance_of_rain")
  int? dailyChanceOfRain;
  @JsonKey(name: "daily_will_it_snow")
  int? dailyWillItSnow;
  @JsonKey(name: "daily_chance_of_snow")
  int? dailyChanceOfSnow;
  @JsonKey(name: "condition")
  Condition? condition;
  @JsonKey(name: "uv")
  double? uv;
  @JsonKey(name: "air_quality")
  Map<String, double>? airQuality;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
    this.airQuality,
  });

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}

@JsonSerializable()
class Location {
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
  @JsonKey(name: "tz_id")
  String? tzId;
  @JsonKey(name: "localtime_epoch")
  int? localtimeEpoch;
  @JsonKey(name: "localtime")
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
