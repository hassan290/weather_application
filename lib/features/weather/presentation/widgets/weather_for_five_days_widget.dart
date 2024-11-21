import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';
import '../manager/weather_bloc/weather_bloc.dart';

class WeatherForFiveDaysWidget extends StatelessWidget {
  const WeatherForFiveDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return SizedBox(
      height: 500.h,
      width: MediaQuery.of(context).size.width.w,
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                return Column(

                  children: [
                    Text(
                        DateFormat.EEEE()
                            .format(controller.forecastModelList[index].date!),
                        style: TTextStyles.font10WhiteNormal),
                    SizedBox(height: 10.h),
                    Text(
                        DateFormat('MM/dd')
                            .format(controller.forecastModelList[index].date!),
                        style: TTextStyles.font12WhiteNormal),
                    SizedBox(height: 10.h),
                    Image.network(
                        'http:${controller.forecastModelList[index].image}',
                        height: 24.h,
                        width: 24.w),
                    SizedBox(height: 260.h),
                    SizedBox(height: 10.h),
                    Text(
                        '${controller.forecastModelList[index].maxTemp?.toInt()}°/${controller.forecastModelList[index].minTemp?.toInt()}°',
                        style: TTextStyles.font16WhiteNormal),
                    SizedBox(height: 10.h),
                    Text(
                        '${controller.forecastModelList[index].windSpeed?.toInt()} KM/h',
                        style: TTextStyles.font12WhiteNormal),
                  ],
                );
              },
            ),
            separatorBuilder: (context, index) => SizedBox(width: 25.w),
            itemCount: 5,
          );
        },
      ),
    );
  }
}
