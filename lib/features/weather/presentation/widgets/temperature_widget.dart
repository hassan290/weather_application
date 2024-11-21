import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/text_styles.dart';

class TemperatureWidget extends StatelessWidget {
  final String currentTemp;
  const TemperatureWidget({
    super.key, required this.currentTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(currentTemp, style: TTextStyles.font90WhiteNormal),
        SizedBox(width: 2.w),
        Text('°C', style: TTextStyles.font34WhiteBold),
      ],
    );
  }
}
