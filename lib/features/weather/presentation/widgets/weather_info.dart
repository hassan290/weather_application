import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/features/weather/presentation/widgets/temperature_widget.dart';

import '../../../../core/utils/helpers/air_quality_calculator.dart';
import 'aqi_widget.dart';
import 'descreption_widget.dart';

class WeatherInfoWidget extends StatelessWidget {
  final String currentTempInCelsius;
  final String currentWeatherStatue;
  final String minTemp;
  final String maxTemp;
  final PollutantLevels airQuality;
  const WeatherInfoWidget({super.key, required this.currentTempInCelsius, required this.airQuality, required this.currentWeatherStatue, required this.minTemp, required this.maxTemp});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TemperatureWidget(currentTemp: currentTempInCelsius,),
        DescriptionWidget(currentWeatherStatue: currentWeatherStatue, minTemp: minTemp, maxTemp: maxTemp),
        SizedBox(height: 10.h),
        AQIWidget(airQuality: airQuality,),
      ],
    );
  }
}

