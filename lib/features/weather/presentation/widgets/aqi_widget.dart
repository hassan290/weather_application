import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/colors.dart';
import 'package:weather_application/core/theming/text_styles.dart';
import 'package:weather_application/core/utils/helpers/air_quality_calculator.dart';

class AQIWidget extends StatelessWidget {
  final PollutantLevels airQuality;
  const AQIWidget({super.key, required this.airQuality});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: TColors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.energy_savings_leaf_outlined, color: TColors.grey, size: 20.sp),
          Text('AQI',style: TTextStyles.font16WhiteNormal),
          Text(airQuality.calculateAQI().toString(),style: TTextStyles.font16WhiteNormal),
        ],
      ),
    );
  }
}
