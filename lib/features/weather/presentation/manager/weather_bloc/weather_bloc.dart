import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_application/features/weather/data/remote/models/weather_response_model.dart';
import 'package:weather_application/features/weather/domain/entities/city_weather.dart';
import 'package:weather_application/features/weather/domain/entities/weather_view_model.dart';
import 'package:weather_application/features/weather/domain/use_cases/get_city_use_case.dart';
import 'package:weather_application/features/weather/domain/use_cases/get_weather_use_case.dart';

import '../../../../../core/utils/helpers/air_quality_calculator.dart';
import '../../../data/remote/data_sources/weather_api_constant.dart';
import '../../../data/remote/models/search_response_model.dart';
import '../../../domain/entities/forecast_model.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final GetWeatherUseCase _getWeatherUseCase;
  final GetCityUseCase _getCityUseCase;
  Timer? _timer;
  bool isDay=true;
  int numberOfCities = 1;
  List<CityWeather> citiesWeather = [];
  List<ForecastModel> forecastModelList = List.generate(
      0,
      (_) => ForecastModel(
          date: DateTime.parse('2024-01-01'),
          windSpeed: 0,
          minTemp: 0,
          maxTemp: 0,
          weatherStatue: ''));
  TextEditingController textEditingController = TextEditingController();
  List<WeatherViewModel> weatherViewModelList = List.generate(
      4,
      (_) => WeatherViewModel(
          image: '',
          dayOfWeek: '',
          date: DateTime.parse('2024-01-01'),
          weatherStatue: '',
          maxTemp: 0,
          minTemp: 0));

  WeatherBloc(this._getWeatherUseCase, this._getCityUseCase) : super(const WeatherState.initial()) {
    /// Automatic update of current weather in Omsk every hour;
    _timer=Timer.periodic(Duration(hours: 1), (timer)=>add(WeatherEvent.getWeatherByCityName(cityName: 'Omsk')));
    on<WeatherEvent>(
      (event, emit) async {
        // TODO: implement event handler
        await event.map(
          started: (event) {},
          getWeatherByCityName: (event) async {
            forecastModelList.clear();
            emit(const WeatherState.loadingState());
            final response = await _getWeatherUseCase(
                WeatherApiConstant.apiKey, event.cityName, 4, 'yes', 'yes');
            response.when(
              success: (weatherResponseModel) {
                for (int i = 0; i < 4; i++) {
                  weatherViewModelList[i] = WeatherViewModel(
                    image: weatherResponseModel
                        .forecast.forecastday[i].day.condition.icon,
                    dayOfWeek: DateFormat.EEEE().format(
                        weatherResponseModel.forecast.forecastday[i].date),
                    date: weatherResponseModel.forecast.forecastday[i].date,
                    weatherStatue: weatherResponseModel
                        .forecast.forecastday[i].day.condition.text,
                    maxTemp: weatherResponseModel
                        .forecast.forecastday[i].day.maxtempC,
                    minTemp: weatherResponseModel
                        .forecast.forecastday[i].day.mintempC,
                  );
                  forecastModelList.add(
                    ForecastModel(
                      image: weatherResponseModel
                          .forecast.forecastday[i].day.condition.icon,
                      date: weatherResponseModel.forecast.forecastday[i].date,
                      windSpeed: weatherResponseModel
                          .forecast.forecastday[i].day.maxwindMph,
                      minTemp: weatherResponseModel
                          .forecast.forecastday[i].day.mintempC,
                      maxTemp: weatherResponseModel
                          .forecast.forecastday[i].day.maxtempC,
                      weatherStatue: weatherResponseModel
                          .forecast.forecastday[i].day.condition.text,
                    ),
                  );
                }

                isDay = weatherResponseModel.current.isDay==0?false:true;

                forecastModelList.add(ForecastModel(
                  image: weatherResponseModel.current.condition.icon,
                  date: DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day + 4),
                  windSpeed: weatherResponseModel.current.windMph,
                  minTemp: weatherResponseModel.current.feelslikeC,
                  maxTemp: weatherResponseModel.current.tempC,
                  weatherStatue: weatherResponseModel.current.condition.text,
                ));

                citiesWeather.any((element) =>
                        element.cityName == weatherResponseModel.location.name)
                    ? null
                    : citiesWeather.add(CityWeather(
                        cityName: weatherResponseModel.location.name,
                        currentTemp: weatherResponseModel.current.tempC,
                        maxTemp: weatherResponseModel
                            .forecast.forecastday[0].day.maxtempC,
                        minTemp: weatherResponseModel
                            .forecast.forecastday[0].day.mintempC,
                        aqi: PollutantLevels.fromJson(
                                weatherResponseModel.current.airQuality)
                            .calculateAQI(),
                        isDay: weatherResponseModel.current.isDay,
                      ));
                emit(WeatherState.loadedState(weather: weatherResponseModel));
              },
              failure: (error) => emit(WeatherState.errorState(
                  message: error.failure.message ?? 'Something went wrong')),
            );
          },
          searchCity: (_SearchCity event) async {
            emit(const WeatherState.loadingState());
            final response = await _getCityUseCase(WeatherApiConstant.apiKey, event.cityName);
            response.when(
              success: (cities) {
                emit(WeatherState.loadedCitiesState(cities: cities));
              },
              failure: (error) => emit(WeatherState.errorState(
                  message: error.failure.message ?? 'Something went wrong')),
            );
          },
        );
      },
    );
  }
}
