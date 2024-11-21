import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/features/weather/presentation/manager/weather_bloc/weather_bloc.dart';
import '../../../../core/theming/text_styles.dart';

class WeatherItemWidget extends StatelessWidget {
  final int index;

  const WeatherItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return Row(
          children: [
            Image.network('http:${controller.weatherViewModelList[index].image}', height: 24.h, width: 24.w),
            SizedBox(width: 10.w),
            Text(controller.weatherViewModelList[index].dayOfWeek, style: TTextStyles.font16WhiteNormal),
            SizedBox(width: 20.w),
            Expanded(child: Text(controller.weatherViewModelList[index].weatherStatue, style: TTextStyles.font16WhiteNormal,overflow: TextOverflow.ellipsis,)),
            const Spacer(),
            Text('${controller.weatherViewModelList[index].maxTemp.toInt()}°/${controller.weatherViewModelList[index].minTemp.toInt()}°', style: TTextStyles.font20WhiteNormal),
          ],
        );
      },
    );
  }
}
