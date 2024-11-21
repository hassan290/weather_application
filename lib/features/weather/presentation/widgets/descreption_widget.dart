import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class DescriptionWidget extends StatelessWidget {
  final String currentWeatherStatue;
  final String minTemp;
  final String maxTemp;
  const DescriptionWidget({super.key, required this.currentWeatherStatue, required this.minTemp, required this.maxTemp});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(currentWeatherStatue, style: TTextStyles.font24WhiteNormal),
        SizedBox(width: 10.w),
        Text('$maxTemp°/$minTemp°', style: TTextStyles.font24WhiteNormal),
      ],
    );
  }
}
