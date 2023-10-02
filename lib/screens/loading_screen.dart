import 'package:flutter/material.dart';
import 'package:clima_newone/services/location.dart';
import 'package:clima_newone/services/networking.dart';
import 'package:clima_newone/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima_newone/services/weather.dart';

const apiKey = 'e0eb18a965e5d7ea349ed95fe1478046';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // double? latitude = 73.8567;
  // double? longitude = 18.5204;
  @override
  void initState() {
    getLocationData();
  }

  void getLocationData() async {

    var weatherData = await WeatherModel().getLocationWeather();

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
      }));

    // getData();

    // print('teamp : '+ temperature.toString() );
    // print('conditi :' + condition.toString());
    // print('city:' + cityName);
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
