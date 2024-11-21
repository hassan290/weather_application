import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/routing/routes.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../manager/weather_bloc/weather_bloc.dart';

class SearchBarAndCancelButtonWidget extends StatelessWidget {
  const SearchBarAndCancelButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WeatherBloc>();
    return Row(
      children: [
        Expanded(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              return TextFormField(
                controller:controller.textEditingController,
                onFieldSubmitted: (cityName){
                  FocusScope.of(context).unfocus();
                  controller.textEditingController.clear();
                  controller.add(WeatherEvent.getWeatherByCityName(cityName: cityName));
                  Navigator.pushNamed(context, TRoutes.weather);
                },
                onChanged: (data) => controller.add(WeatherEvent.searchCity(cityName: data)),
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
                  hintStyle: TTextStyles.font16WhiteNormal.copyWith(
                    color: const Color(0xFF999999),
                  ),
                ),
              );
            },
          ),
        ),
        TextButton(
            onPressed: (){
              FocusScope.of(context).unfocus();
              controller.textEditingController.clear();
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TTextStyles.font16WhiteNormal.copyWith(color: Colors.blue),
            ))
      ],
    );
  }
}
