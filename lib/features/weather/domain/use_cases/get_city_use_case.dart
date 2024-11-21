import 'package:weather_application/features/weather/domain/repositories/weather_repository.dart';

import '../../../../core/networks/api_result.dart';

class GetCityUseCase{
  final WeatherRepository _weatherRepository;

  GetCityUseCase(this._weatherRepository);

  Future<ApiResult> call(String apiKey, String city) async {
    return await _weatherRepository.getCity(apiKey, city);
  }
}