// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName) getWeatherByCityName,
    required TResult Function(String cityName) searchCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName)? getWeatherByCityName,
    TResult? Function(String cityName)? searchCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName)? getWeatherByCityName,
    TResult Function(String cityName)? searchCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeatherByCityName value) getWeatherByCityName,
    required TResult Function(_SearchCity value) searchCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult? Function(_SearchCity value)? searchCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult Function(_SearchCity value)? searchCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WeatherEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName) getWeatherByCityName,
    required TResult Function(String cityName) searchCity,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName)? getWeatherByCityName,
    TResult? Function(String cityName)? searchCity,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName)? getWeatherByCityName,
    TResult Function(String cityName)? searchCity,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeatherByCityName value) getWeatherByCityName,
    required TResult Function(_SearchCity value) searchCity,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult? Function(_SearchCity value)? searchCity,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult Function(_SearchCity value)? searchCity,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetWeatherByCityNameImplCopyWith<$Res> {
  factory _$$GetWeatherByCityNameImplCopyWith(_$GetWeatherByCityNameImpl value,
          $Res Function(_$GetWeatherByCityNameImpl) then) =
      __$$GetWeatherByCityNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$GetWeatherByCityNameImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherByCityNameImpl>
    implements _$$GetWeatherByCityNameImplCopyWith<$Res> {
  __$$GetWeatherByCityNameImplCopyWithImpl(_$GetWeatherByCityNameImpl _value,
      $Res Function(_$GetWeatherByCityNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$GetWeatherByCityNameImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherByCityNameImpl implements _GetWeatherByCityName {
  const _$GetWeatherByCityNameImpl({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherEvent.getWeatherByCityName(cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherByCityNameImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherByCityNameImplCopyWith<_$GetWeatherByCityNameImpl>
      get copyWith =>
          __$$GetWeatherByCityNameImplCopyWithImpl<_$GetWeatherByCityNameImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName) getWeatherByCityName,
    required TResult Function(String cityName) searchCity,
  }) {
    return getWeatherByCityName(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName)? getWeatherByCityName,
    TResult? Function(String cityName)? searchCity,
  }) {
    return getWeatherByCityName?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName)? getWeatherByCityName,
    TResult Function(String cityName)? searchCity,
    required TResult orElse(),
  }) {
    if (getWeatherByCityName != null) {
      return getWeatherByCityName(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeatherByCityName value) getWeatherByCityName,
    required TResult Function(_SearchCity value) searchCity,
  }) {
    return getWeatherByCityName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult? Function(_SearchCity value)? searchCity,
  }) {
    return getWeatherByCityName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult Function(_SearchCity value)? searchCity,
    required TResult orElse(),
  }) {
    if (getWeatherByCityName != null) {
      return getWeatherByCityName(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherByCityName implements WeatherEvent {
  const factory _GetWeatherByCityName({required final String cityName}) =
      _$GetWeatherByCityNameImpl;

  String get cityName;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherByCityNameImplCopyWith<_$GetWeatherByCityNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCityImplCopyWith<$Res> {
  factory _$$SearchCityImplCopyWith(
          _$SearchCityImpl value, $Res Function(_$SearchCityImpl) then) =
      __$$SearchCityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$SearchCityImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SearchCityImpl>
    implements _$$SearchCityImplCopyWith<$Res> {
  __$$SearchCityImplCopyWithImpl(
      _$SearchCityImpl _value, $Res Function(_$SearchCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$SearchCityImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCityImpl implements _SearchCity {
  const _$SearchCityImpl({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'WeatherEvent.searchCity(cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityImplCopyWith<_$SearchCityImpl> get copyWith =>
      __$$SearchCityImplCopyWithImpl<_$SearchCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName) getWeatherByCityName,
    required TResult Function(String cityName) searchCity,
  }) {
    return searchCity(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName)? getWeatherByCityName,
    TResult? Function(String cityName)? searchCity,
  }) {
    return searchCity?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName)? getWeatherByCityName,
    TResult Function(String cityName)? searchCity,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWeatherByCityName value) getWeatherByCityName,
    required TResult Function(_SearchCity value) searchCity,
  }) {
    return searchCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult? Function(_SearchCity value)? searchCity,
  }) {
    return searchCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWeatherByCityName value)? getWeatherByCityName,
    TResult Function(_SearchCity value)? searchCity,
    required TResult orElse(),
  }) {
    if (searchCity != null) {
      return searchCity(this);
    }
    return orElse();
  }
}

abstract class _SearchCity implements WeatherEvent {
  const factory _SearchCity({required final String cityName}) =
      _$SearchCityImpl;

  String get cityName;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCityImplCopyWith<_$SearchCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'WeatherState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements WeatherState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements WeatherState {
  const factory ErrorState({required final String message}) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherResponseModel weather});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$LoadedStateImpl(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherResponseModel,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl({required this.weather});

  @override
  final WeatherResponseModel weather;

  @override
  String toString() {
    return 'WeatherState.loadedState(weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) {
    return loadedState(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) {
    return loadedState?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements WeatherState {
  const factory LoadedState({required final WeatherResponseModel weather}) =
      _$LoadedStateImpl;

  WeatherResponseModel get weather;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCitiesStateImplCopyWith<$Res> {
  factory _$$LoadedCitiesStateImplCopyWith(_$LoadedCitiesStateImpl value,
          $Res Function(_$LoadedCitiesStateImpl) then) =
      __$$LoadedCitiesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CityResponseModel> cities});
}

/// @nodoc
class __$$LoadedCitiesStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$LoadedCitiesStateImpl>
    implements _$$LoadedCitiesStateImplCopyWith<$Res> {
  __$$LoadedCitiesStateImplCopyWithImpl(_$LoadedCitiesStateImpl _value,
      $Res Function(_$LoadedCitiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$LoadedCitiesStateImpl(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityResponseModel>,
    ));
  }
}

/// @nodoc

class _$LoadedCitiesStateImpl implements LoadedCitiesState {
  const _$LoadedCitiesStateImpl({required final List<CityResponseModel> cities})
      : _cities = cities;

  final List<CityResponseModel> _cities;
  @override
  List<CityResponseModel> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'WeatherState.loadedCitiesState(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCitiesStateImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCitiesStateImplCopyWith<_$LoadedCitiesStateImpl> get copyWith =>
      __$$LoadedCitiesStateImplCopyWithImpl<_$LoadedCitiesStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(WeatherResponseModel weather) loadedState,
    required TResult Function(List<CityResponseModel> cities) loadedCitiesState,
  }) {
    return loadedCitiesState(cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(WeatherResponseModel weather)? loadedState,
    TResult? Function(List<CityResponseModel> cities)? loadedCitiesState,
  }) {
    return loadedCitiesState?.call(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(WeatherResponseModel weather)? loadedState,
    TResult Function(List<CityResponseModel> cities)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadedCitiesState != null) {
      return loadedCitiesState(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorState value) errorState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(LoadedCitiesState value) loadedCitiesState,
  }) {
    return loadedCitiesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(ErrorState value)? errorState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(LoadedCitiesState value)? loadedCitiesState,
  }) {
    return loadedCitiesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorState value)? errorState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(LoadedCitiesState value)? loadedCitiesState,
    required TResult orElse(),
  }) {
    if (loadedCitiesState != null) {
      return loadedCitiesState(this);
    }
    return orElse();
  }
}

abstract class LoadedCitiesState implements WeatherState {
  const factory LoadedCitiesState(
          {required final List<CityResponseModel> cities}) =
      _$LoadedCitiesStateImpl;

  List<CityResponseModel> get cities;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedCitiesStateImplCopyWith<_$LoadedCitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
