import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/weather_bloc/weather_bloc.dart';

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    final List<double> maxTemp =
        List.generate(5, (i) => controller.forecastModelList[1].maxTemp!);
    final List<double> minTemp =
        List.generate(5, (i) => controller.forecastModelList[1].minTemp!);
    return SizedBox(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              minX: 0,
              maxX: MediaQuery.of(context).size.width,
              minY: findMin(minTemp) - 10,
              maxY: findMax(maxTemp) + 10,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(22.w, controller.forecastModelList[0].minTemp!),
                    FlSpot(96.w, controller.forecastModelList[1].minTemp!),
                    FlSpot(170.w, controller.forecastModelList[2].minTemp!),
                    FlSpot(250.w, controller.forecastModelList[3].minTemp!),
                    FlSpot(325.w, controller.forecastModelList[4].minTemp!),
                  ],
                  isCurved: false,
                  barWidth: 2,
                  color: Colors.blue,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                        radius: 4,
                        color: Colors.blue,
                        strokeColor: Colors.white,
                        strokeWidth: 2,
                      );
                    },
                  ),
                ),
              ],
              titlesData: FlTitlesData(
                show: false,
              ),
            ),
          );
        },
      ),
    );
  }
}

double findMax(List<double> list) {
  return list.reduce(max);
}

double findMin(List<double> list) {
  return list.reduce(min);
}
