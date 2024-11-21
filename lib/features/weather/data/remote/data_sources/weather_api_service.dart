import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_application/features/weather/data/remote/data_sources/weather_api_constant.dart';
import '../../../../../core/networks/api_constants.dart';
import '../models/search_response_model.dart';
import '../models/weather_response_model.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio) = _WeatherApiService;

  @GET(WeatherApiConstant.forecastEP)
  Future<WeatherResponseModel> getWeather(
      @Query("key") String apiKey, @Query("q") String city, @Query('days') int days, @Query("aqi") String aqi, @Query("alerts") String alert);

  @GET(WeatherApiConstant.searchEP)
  Future<List<CityResponseModel>> getCity(@Query("key") String apiKey, @Query("q") String city);

}
