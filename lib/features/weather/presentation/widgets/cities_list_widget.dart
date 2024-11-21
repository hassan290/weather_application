import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/routing/routes.dart';
import 'package:weather_application/features/weather/presentation/manager/weather_bloc/weather_bloc.dart';

import '../../../../core/theming/text_styles.dart';
import '../../data/remote/models/search_response_model.dart';

class CitiesListWidget extends StatelessWidget {
  final List<CityResponseModel> cities;

  const CitiesListWidget({super.key, required this.cities});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return SizedBox(
      height: 400.h,
      child: ListView.separated(
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cities[index].name ?? '',
                    style: TTextStyles.font16WhiteNormal),
                SizedBox(height: 10.h),
                Text(cities[index].country ?? '',
                    style: TTextStyles.font16GreyNormal),
              ],
            ),
            IconButton(
                onPressed: () {
                  controller.add(WeatherEvent.getWeatherByCityName(cityName: cities[index].name ?? 'omsk'));
                  Navigator.pushNamed(context, TRoutes.weather);
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24.h,
                )),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(height: 30.h),
        itemCount: cities.length,
      ),
    );
  }
}
