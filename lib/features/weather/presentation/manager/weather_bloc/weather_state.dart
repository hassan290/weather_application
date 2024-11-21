part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.loadingState() = LoadingState;

  const factory WeatherState.errorState({required String message}) = ErrorState;

  const factory WeatherState.loadedState({required WeatherResponseModel weather}) = LoadedState;

  //City state:
const factory WeatherState.loadedCitiesState({required List<CityResponseModel> cities}) = LoadedCitiesState;


}
