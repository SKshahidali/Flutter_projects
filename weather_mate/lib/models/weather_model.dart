class Weather {
  final String cityName;
  final double Temperature;
  final String conditions;

  Weather({
    required this.cityName,
    required this.Temperature,
    required this.conditions
  });

  // This will fetch date from JSON file //

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      Temperature: json['main']['temp'].toDouble(),
      conditions:json['weather'][0]['main'],
    );
  }
}