import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/features/weather/presentation/widgets/weather_for_five_days_widget.dart';
import 'forecast_widget.dart';

class ForecastChartWidget extends StatelessWidget {
  const ForecastChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WeatherForFiveDaysWidget(),
        Positioned(
          top: 110.h,
          child: ForecastWidget(),
        ),
      ],
    );
  }

}




