// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_calculator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQuality _$AirQualityFromJson(Map<String, dynamic> json) => AirQuality(
      airQuality: (json['air_quality'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$AirQualityToJson(AirQuality instance) =>
    <String, dynamic>{
      'air_quality': instance.airQuality,
    };

PollutantLevels _$PollutantLevelsFromJson(Map<String, dynamic> json) =>
    PollutantLevels(
      co: (json['co'] as num).toDouble(),
      no2: (json['no2'] as num).toDouble(),
      o3: (json['o3'] as num).toDouble(),
      so2: (json['so2'] as num).toDouble(),
      pm2_5: (json['pm2_5'] as num).toDouble(),
      pm10: (json['pm10'] as num).toDouble(),
    );

Map<String, dynamic> _$PollutantLevelsToJson(PollutantLevels instance) =>
    <String, dynamic>{
      'co': instance.co,
      'no2': instance.no2,
      'o3': instance.o3,
      'so2': instance.so2,
      'pm2_5': instance.pm2_5,
      'pm10': instance.pm10,
    };
