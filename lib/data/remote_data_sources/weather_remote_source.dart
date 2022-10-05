import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=eaccbed3b71849b6962101747220210&q=Plewiska&aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        ' http://api.weatherapi.com/v1/current.json?key=eaccbed3b71849b6962101747220210&q=$city&aqi=no');
    return response.data;
  }
}
