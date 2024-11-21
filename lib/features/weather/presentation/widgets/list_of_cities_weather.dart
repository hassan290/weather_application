import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/utils/shared/widgets/custom_container_widget.dart';

import '../manager/weather_bloc/weather_bloc.dart';

class ListOfCitiesWeather extends StatelessWidget {
  const ListOfCitiesWeather({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return SizedBox(
      height: 400.h,
      child: ListView.separated(
        itemBuilder: (context, index) => CustomContainerWidget(index: index,),
        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: controller.citiesWeather.length,
      ),
    );
  }
}
