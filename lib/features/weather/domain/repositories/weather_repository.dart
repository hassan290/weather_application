import 'package:weather_application/core/networks/api_result.dart';

abstract class WeatherRepository {
  Future<ApiResult> getWeather(String apiKey,String city,int days, String aqi, String alert);
  Future<ApiResult> getCity(String apiKey,String city);
}