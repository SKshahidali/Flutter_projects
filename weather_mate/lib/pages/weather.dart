import 'package:flutter/material.dart';
import 'package:weather_mate/services/weather_services.dart';

import '../models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //Api key //
  final _weatherservice = WeatherService('2159acabb4297ddca3bd3cd5f3bd4a8f');
  Weather? _weather;
  //Fetch Weather //
  _fetchWeather() async {
    String cityName =
        await _weatherservice.getCurrentCity(); //Get the city Name //
    //Fetch Weather for the city //
    try {
      final weather = await _weatherservice.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  //Weather Animations//

  //Initial State of the Application //
  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //<----->City Name for the Weather<----->//
            Text(_weather?.cityName ?? "Loading city .."),
            //<----->Temperature <----->//
            Text('${_weather?.Temperature.round()}°C')
          ],
        ),
      )
    );
  }
}
