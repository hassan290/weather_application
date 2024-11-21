import 'package:flutter/material.dart';
import 'package:weather_application/core/routing/routes.dart';
import 'package:weather_application/features/weather/presentation/pages/forecast_screen.dart';
import 'package:weather_application/features/weather/presentation/pages/weather_screen.dart';

import '../../features/weather/presentation/pages/city_search_screen.dart';
import '../../features/weather/presentation/pages/search_screen.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case TRoutes.weather:
        return MaterialPageRoute(builder: (context) => const WeatherScreen());
      case TRoutes.search:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case TRoutes.citySearch:
        return MaterialPageRoute(builder: (context) => const CitySearchScreen());
      case TRoutes.forecast:
        return MaterialPageRoute(builder: (context) => const ForecastScreen());
      default:
        return MaterialPageRoute(builder: (context) => const WeatherScreen());
    }
  }
}