part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _Started;

  const factory WeatherEvent.getWeatherByCityName({required String cityName}) = _GetWeatherByCityName;

  const factory WeatherEvent.searchCity({required String cityName}) = _SearchCity;

}
