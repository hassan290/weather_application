import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/text_styles.dart';

import '../../../../features/weather/presentation/manager/weather_bloc/weather_bloc.dart';
import '../../../routing/routes.dart';
import '../../../theming/colors.dart';

class TDefaultContainerWidget extends StatelessWidget {
  final String title;
  const TDefaultContainerWidget ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return InkWell(
      onTap: (){
        controller.add(WeatherEvent.getWeatherByCityName(cityName: title));
        Navigator.pushNamed(context, TRoutes.weather );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        width: 100.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: TColors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        child: Text(textAlign: TextAlign.center, title,style: TTextStyles.font16WhiteNormal),
      ),
    );
  }
}
