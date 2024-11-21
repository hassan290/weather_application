import 'package:weather_application/core/networks/api_error_handler/api_error_handler.dart';
import 'package:weather_application/core/networks/api_result.dart';
import 'package:weather_application/features/weather/data/remote/data_sources/weather_api_service.dart';

import '../../domain/repositories/weather_repository.dart';

class WeatherRepositoryImp implements WeatherRepository {
  final WeatherApiService _weatherApiService;

  WeatherRepositoryImp(this._weatherApiService);

  @override
  Future<ApiResult> getWeather(String apiKey,String city,int days, String aqi, String alert) async {
    try {
      final response = await _weatherApiService.getWeather(apiKey,city,days,aqi,alert);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult> getCity(String apiKey, String city) async{
    // TODO: implement getCity
    try {
      final response = await _weatherApiService.getCity(apiKey,city);
      return ApiResult.success(response);
    }catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
