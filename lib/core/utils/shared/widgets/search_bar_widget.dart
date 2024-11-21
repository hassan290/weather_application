import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/routing/routes.dart';

import '../../../theming/colors.dart';
import '../../../theming/text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: (){
        FocusScope.of(context).unfocus();
        Navigator.pushNamed(context, TRoutes.citySearch);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.r),
        ),
        filled: true,
        fillColor: TColors.primaryGrey,
        prefixIcon: Icon(
          Icons.search,
          color: const Color(0xFF999999),
          size: 24.h,
        ),
        hintText: 'Enter Location',
        hintStyle: TTextStyles.font16WhiteNormal.copyWith(color: const Color(0xFF999999)),
      ),
    );
  }
}
