import 'dart:async';

import '../../../../core/networks/api_result.dart';
import '../repositories/weather_repository.dart';

class GetWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetWeatherUseCase(this._weatherRepository);

  Future<ApiResult> call(
      String apiKey, String city, int days, String aqi, String alert) async {
    return await _weatherRepository.getWeather(apiKey, city, days, aqi, alert);
  }

}
