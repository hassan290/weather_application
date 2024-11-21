class WeatherViewModel {
  final String image;
  final String dayOfWeek;
  final DateTime date;
  final String weatherStatue;
  final double maxTemp;
  final double minTemp;

  WeatherViewModel(
      {required this.image,
      required this.dayOfWeek,
      required this.date,
      required this.weatherStatue,
      required this.maxTemp,
      required this.minTemp});
}

