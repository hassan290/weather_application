import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/features/weather/presentation/widgets/weather_next_three_days.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class ForecastWeatherWidget extends StatelessWidget {
  const ForecastWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
        height: 280.h,
        decoration: BoxDecoration(
          gradient: TColors.forecastColor,
          borderRadius: BorderRadius.circular(45.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.calendar_month, color: Colors.grey, size: 30.sp),
                SizedBox(width: 10.w),
                Text('5-day forecast', style: TTextStyles.font20GreyNormal),
              ],
            ),
            SizedBox(height: 20.h),
            const WeatherNextThreeDays(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () =>Navigator.pushNamed(context, TRoutes.forecast),
                style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.transparent),),
                child: Text('5-day forecast', style: TTextStyles.font20GreyNormal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
