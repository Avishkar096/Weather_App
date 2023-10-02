import 'package:http/http.dart' as http;
import 'dart:convert';

// double? latitude = 73.8567;
// double? longitude = 18.5204;

const apiKey = 'e0eb18a965e5d7ea349ed95fe1478046';

class NetworkHelper{

  NetworkHelper(this.url);

  final String url;

  Future getData() async {


    http.Response response = await http.get(Uri.parse(url));
    // http.Response response = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey"));
    // print(response.body);

    if(response.statusCode == 200){
      String data = response.body;

      return jsonDecode(data);

    }
    else{
      print(response.statusCode);
    }
  }


}