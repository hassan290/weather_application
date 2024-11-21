import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/theming/colors.dart';
import 'package:weather_application/features/weather/presentation/widgets/city_widget.dart';
import 'package:weather_application/features/weather/presentation/widgets/forecast_weather_widget.dart';

import '../../../../core/utils/helpers/air_quality_calculator.dart';
import '../manager/weather_bloc/weather_bloc.dart';
import '../widgets/weather_info.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final controller = context.read<WeatherBloc>();
            return state.map(
              initial: (_) => const SizedBox.shrink(),
              loadingState: (_) => Scaffold(backgroundColor: Colors.black,body: Center(child: CircularProgressIndicator(color:TColors.primaryGrey,))),
              errorState: (state) => Center(child: Text(state.message)),
              loadedState: (state) {
                return SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: controller.isDay ? const AssetImage('assets/images/day_background.jpeg') : const AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CityWidget(cityName: state.weather.location?.name ?? 'Omsk',),
                          SizedBox(height: 100.h),
                          WeatherInfoWidget(currentTempInCelsius: state.weather.current?.feelslikeC?.toInt().toString() ?? '0',
                            currentWeatherStatue: state.weather.current?.condition?.text ?? 'Cloudy',
                            minTemp: state.weather.forecast?.forecastday?[0].day?.mintempC?.toInt().toString() ?? '0',
                            maxTemp: state.weather.forecast?.forecastday?[0].day?.maxtempC?.toInt().toString() ?? '0',
                            airQuality:PollutantLevels.fromJson(state.weather.current!.airQuality ?? {}),),
                          SizedBox(height: 150.h),
                          const ForecastWeatherWidget(),
                        ],
                      ),
                    ),
                  ),
                );
              },
              loadedCitiesState: (state) =>const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
