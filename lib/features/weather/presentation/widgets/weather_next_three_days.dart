import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/features/weather/presentation/widgets/weather_item_widget.dart';

class WeatherNextThreeDays extends StatelessWidget {
  const WeatherNextThreeDays({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>WeatherItemWidget(index: index,),
        separatorBuilder:(context, index) => SizedBox(height: 20.h),
        itemCount: 3,
      ),
    );
  }
}
