import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_application/core/di/dependency_injection.dart';
import 'package:weather_application/core/routing/app_router.dart';
import 'package:weather_application/core/routing/routes.dart';

import 'features/weather/presentation/manager/weather_bloc/weather_bloc.dart';

class WeatherApp extends StatelessWidget {
  final AppRouter appRouter;

  const WeatherApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => WeatherBloc(getIt(),getIt())..add(WeatherEvent.getWeatherByCityName(cityName: 'Omsk')),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Weather App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            onGenerateRoute: appRouter.onGenerateRoute,
            initialRoute: TRoutes.weather,
          ),
        );
      },
    );
  }
}
