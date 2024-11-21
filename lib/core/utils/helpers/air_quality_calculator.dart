import 'package:json_annotation/json_annotation.dart';

part 'air_quality_calculator.g.dart';

@JsonSerializable()
class AirQuality {
  @JsonKey(name: "air_quality")
  Map<String, double>? airQuality;

  AirQuality({this.airQuality});

  factory AirQuality.fromJson(Map<String, dynamic> json) => _$AirQualityFromJson(json);

  Map<String, dynamic> toJson() => _$AirQualityToJson(this);
}

@JsonSerializable()
class PollutantLevels {
  double co;    // Carbon Monoxide in ppb
  double no2;   // Nitrogen Dioxide in ppb
  double o3;    // Ozone in ppb
  double so2;   // Sulfur Dioxide in ppb
  double pm2_5; // PM2.5 in µg/m³
  double pm10;  // PM10 in µg/m³

  PollutantLevels({
    required this.co,
    required this.no2,
    required this.o3,
    required this.so2,
    required this.pm2_5,
    required this.pm10,
  });

  factory PollutantLevels.fromJson(Map<String, dynamic> json) => _$PollutantLevelsFromJson(json);

  Map<String, dynamic> toJson() => _$PollutantLevelsToJson(this);

// Insert the calculation methods as per your requirements here.
  int calculateAQI() {
    int aqiCo = calculateCO(co);
    int aqiNo2 = calculateNO2(no2);
    int aqiO3 = calculateO3(o3);
    int aqiSo2 = calculateSO2(so2);
    int aqiPm25 = calculatePM25(pm2_5);
    int aqiPm10 = calculatePM10(pm10);

    // Return the highest AQI value
    return [aqiCo, aqiNo2, aqiO3, aqiSo2, aqiPm25, aqiPm10].reduce((a, b) => a > b ? a : b);
  }

  int calculateCO(double value) {
    if (value <= 4.4) return convertToAQI(value, 0, 50, 0, 4.4);
    if (value <= 9.4) return convertToAQI(value, 51, 100, 4.5, 9.4);
    if (value <= 12.4) return convertToAQI(value, 101, 150, 9.5, 12.4);
    if (value <= 15.4) return convertToAQI(value, 151, 200, 12.5, 15.4);
    if (value <= 30.4) return convertToAQI(value, 201, 300, 15.5, 30.4);
    return convertToAQI(value, 301, 500, 30.5, double.infinity);
  }

  int calculateNO2(double value) {
    if (value <= 53) return convertToAQI(value, 0, 50, 0, 53);
    if (value <= 100) return convertToAQI(value, 51, 100, 54, 100);
    if (value <= 360) return convertToAQI(value, 101, 150, 101, 360);
    if (value <= 649) return convertToAQI(value, 151, 200, 361, 649);
    if (value <= 1249) return convertToAQI(value, 201, 300, 650, 1249);
    return convertToAQI(value, 301, 500, 1250, double.infinity);
  }

  int calculateO3(double value) {
    if (value <= 54) return convertToAQI(value, 0, 50, 0, 54);
    if (value <= 70) return convertToAQI(value, 51, 100, 55, 70);
    if (value <= 85) return convertToAQI(value, 101, 150, 71, 85);
    if (value <= 105) return convertToAQI(value, 151, 200, 86, 105);
    if (value <= 200) return convertToAQI(value, 201, 300, 106, 200);
    return convertToAQI(value, 301, 500, 201, double.infinity);
  }

  int calculateSO2(double value) {
    if (value <= 35) return convertToAQI(value, 0, 50, 0, 35);
    if (value <= 75) return convertToAQI(value, 51, 100, 36, 75);
    if (value <= 185) return convertToAQI(value, 101, 150, 76, 185);
    if (value <= 304) return convertToAQI(value, 151, 200, 186, 304);
    if (value <= 604) return convertToAQI(value, 201, 300, 305, 604);
    return convertToAQI(value, 301, 500, 605, double.infinity);
  }

  int calculatePM25(double value) {
    if (value <= 12) return convertToAQI(value,0 ,50 ,0 ,12 );
    if (value <=35.4) return convertToAQI(value ,51 ,100 ,12.1 ,35.4 );
    if (value <=55.4) return convertToAQI(value ,101 ,150 ,35.5 ,55.4 );
    if (value <=150.4) return convertToAQI(value ,151 ,200 ,55.5 ,150.4 );
    if (value <=250.4) return convertToAQI(value ,201 ,300 ,150.5 ,250.4 );
    return convertToAQI(value ,301 ,500 ,250.5 ,double.infinity );
  }

  int calculatePM10(double value) {
    if (value <=54 ) return convertToAQI(value ,0 ,50 ,0 ,54 );
    if (value <=154 ) return convertToAQI(value ,51 ,100 ,55 ,154 );
    if (value <=254 ) return convertToAQI(value ,101 ,150 ,155 ,254 );
    if (value <=354 ) return convertToAQI(value ,151 ,200 ,255 ,354 );
    if (value <=424 ) return convertToAQI(value ,201 ,300 ,355 ,424 );
    return convertToAQI(value ,301 ,500 ,425 ,double.infinity );
  }

  int convertToAQI(double value,double lowIndex,double highIndex,double lowValue,double highValue){
    return ((highIndex - lowIndex)/(highValue - lowValue)*(value - lowValue) + lowIndex).round();
  }

}

// extension AQICalculator on PollutantLevels {
//   int calculateAQI() {
//     return [
//       _calculateAQIForPM25(pm2_5),
//       _calculateAQIForPM10(pm10),
//       _calculateAQIForOzone(o3),
//       _calculateAQIForNO2(no2),
//       _calculateAQIForSO2(so2),
//       _calculateAQIForCO(co),
//     ].reduce((a, b) => a > b ? a : b); // return the highest AQI
//   }
//
//   int _calculateAQIForPM25(double value) {
//     if (value <= 12) {
//       return ((value / 12) * 50).toInt();
//     } else if (value <= 35.4) {
//       return (((value - 12) / (35.4 - 12)) * (100 - 51) + 51).toInt();
//     } else if (value <= 55.4) {
//       return (((value - 35.5) / (55.4 - 35.5)) * (150 - 101) + 101).toInt();
//     } else if (value <= 150.4) {
//       return (((value - 55.5) / (150.4 - 55.5)) * (200 - 151) + 151).toInt();
//     } else if (value <= 250.4) {
//       return (((value - 150.5) / (250.4 - 150.5)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
//
//   int _calculateAQIForPM10(double value) {
//     if (value <= 54) {
//       return ((value / 54) * 50).toInt();
//     } else if (value <= 154) {
//       return (((value - 55) / (154 - 55)) * (100 - 51) + 51).toInt();
//     } else if (value <= 254) {
//       return (((value - 155) / (254 - 155)) * (150 - 101) + 101).toInt();
//     } else if (value <= 354) {
//       return (((value - 255) / (354 - 255)) * (200 - 151) + 151).toInt();
//     } else if (value <= 424) {
//       return (((value - 355) / (424 - 355)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
//
//   int _calculateAQIForOzone(double value) {
//     if (value <= 0.054) {
//       return ((value / 0.054) * 50).toInt();
//     } else if (value <= 0.070) {
//       return (((value - 0.055) / (0.070 - 0.055)) * (100 - 51) + 51).toInt();
//     } else if (value <= 0.085) {
//       return (((value - 0.071) / (0.085 - 0.071)) * (150 - 101) + 101).toInt();
//     } else if (value <= 0.105) {
//       return (((value - 0.086) / (0.105 - 0.086)) * (200 - 151) + 151).toInt();
//     } else if (value <= 0.200) {
//       return (((value - 0.106) / (0.200 - 0.106)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
//
//   int _calculateAQIForNO2(double value) {
//     if (value <= 53) {
//       return ((value / 53) * 50).toInt();
//     } else if (value <= 100) {
//       return (((value - 54) / (100 - 54)) * (100 - 51) + 51).toInt();
//     } else if (value <= 360) {
//       return (((value - 101) / (360 - 101)) * (150 - 101) + 101).toInt();
//     } else if (value <= 649) {
//       return (((value - 361) / (649 - 361)) * (200 - 151) + 151).toInt();
//     } else if (value <= 1249) {
//       return (((value - 650) / (1249 - 650)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
//
//   int _calculateAQIForSO2(double value) {
//     if (value <= 35) {
//       return ((value / 35) * 50).toInt();
//     } else if (value <= 75) {
//       return (((value - 36) / (75 - 36)) * (100 - 51) + 51).toInt();
//     } else if (value <= 185) {
//       return (((value - 76) / (185 - 76)) * (150 - 101) + 101).toInt();
//     } else if (value <= 304) {
//       return (((value - 186) / (304 - 186)) * (200 - 151) + 151).toInt();
//     } else if (value <= 604) {
//       return (((value - 305) / (604 - 305)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
//
//   int _calculateAQIForCO(double value) {
//     if (value <= 4.4) {
//       return ((value / 4.4) * 50).toInt();
//     } else if (value <= 9.4) {
//       return (((value - 4.5) / (9.4 - 4.5)) * (100 - 51) + 51).toInt();
//     } else if (value <= 12.4) {
//       return (((value - 9.5) / (12.4 - 9.5)) * (150 - 101) + 101).toInt();
//     } else if (value <= 15.4) {
//       return (((value - 12.5) / (15.4 - 12.5)) * (200 - 151) + 151).toInt();
//     } else if (value <= 30.4) {
//       return (((value - 15.5) / (30.4 - 15.5)) * (300 - 201) + 201).toInt();
//     } else {
//       return 500; // Hazardous
//     }
//   }
// }