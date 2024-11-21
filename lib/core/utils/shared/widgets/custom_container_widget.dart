import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/routing/routes.dart';
import 'package:weather_application/core/theming/text_styles.dart';

import '../../../../features/weather/presentation/manager/weather_bloc/weather_bloc.dart';

class CustomContainerWidget extends StatelessWidget {
  final int index;

  const CustomContainerWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return InkWell(
      onTap: (){
        controller.add(WeatherEvent.getWeatherByCityName(cityName: controller.citiesWeather[index].cityName!));
        Navigator.pushNamed(context, TRoutes.weather);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        height: 90.h,
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(controller.citiesWeather[index].cityName!,
                        style: TTextStyles.font16WhiteNormal),
                    Row(
                      children: [
                        Text(
                          'AQI ${controller.citiesWeather[index].aqi}',
                          style: TTextStyles.font16WhiteNormal,
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          '${controller.citiesWeather[index].maxTemp!.toInt()}°/${controller.citiesWeather[index].minTemp!.toInt()}°',
                          style: TTextStyles.font16WhiteNormal,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${controller.citiesWeather[index].currentTemp!.toInt()}°', style: TTextStyles.font24WhiteNormal),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
