import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_application/core/networks/api_constants.dart';
import 'package:weather_application/core/networks/dio_factory.dart';

import '../../features/weather/data/remote/data_sources/weather_api_service.dart';
import '../../features/weather/data/repositories/weather_repository_imp.dart';
import '../../features/weather/domain/repositories/weather_repository.dart';
import '../../features/weather/domain/use_cases/get_city_use_case.dart';
import '../../features/weather/domain/use_cases/get_weather_use_case.dart';
import '../../features/weather/presentation/manager/weather_bloc/weather_bloc.dart';

final getIt=GetIt.instance;

Future<void> setupGetIt() async {
  //Dio
  final Dio dio= await DioFactory().getDio(ApiConstants.baseUrl);

  //Api Service
  getIt.registerLazySingleton<WeatherApiService>(() => WeatherApiService(dio));

  //Repositories
  getIt.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImp(getIt()));

  //UseCases
  getIt.registerLazySingleton(() => GetWeatherUseCase(getIt()));
  getIt.registerLazySingleton(() => GetCityUseCase(getIt()));

  //Blocs
  getIt.registerFactory(() => WeatherBloc(getIt(),getIt()));



}