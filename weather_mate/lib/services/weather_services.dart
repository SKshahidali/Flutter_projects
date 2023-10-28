import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import '../models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const BASE_URL = "http://api.openweathermap.org/data/2.5/weather";
  final String apikey;

  WeatherService(this.apikey);
  

  Future<Weather> getWeather(String cityName)async {
    final response = await http.get(Uri.parse('$BASE_URL ?q=$cityName&appid=$apikey&units=metric'));
    if (response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
      }
      else{
        throw Exception("Failed to load weather data");
    }
  }

  Future<String> getCurrentCity() async {

    //Get permission from the user for the location //
    LocationPermission permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    //Fetch the current location //
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );

    //Convert the location into placemarks object //

    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);

    String ? city = placemarks[0].locality;
    return city ?? "";
  }
}