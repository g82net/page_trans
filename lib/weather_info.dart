import 'dart:io';
import 'dart:convert';


import 'dart:io';

class Weather_info {
  final String name;
  final String location;
  final String description;
  String imageUrl;
  int rating = 10;

  Weather_info(this.name, this.location, this.description);

  Future getImageUrl() async {
    if (imageUrl != null) {
      return;
    }
    // Get an Temp
    HttpClient http = new HttpClient();
    try {
      //var uri = new Uri.http('dog.ceo', '/api/breeds/image/random');
      var uri = 'http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22';
      var request = await http.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();
      var data = json.decode(responseBody);
      var url = decoded['message'];

      var description = data['weather']['description'];
      var temp = data['main']['temp'];
      return { 'description': description, 'temp': temp };


      //imageUrl = url;
    } catch (exception) {
      print(exception);
    }
  }


}




/*
Future<Map> getData() async {

  final String url = 'http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22';
  var httpClient = new HttpClient();

  var request = await httpClient.getUrl(url);

  var response = await request.close();
  var data = json.decode(response);
  var description = data['weather']['description'];
  var temp = data['main']['temp'];
  return { 'description': description, 'temp': temp };

}

main() async {
  print(await getData());
}
*/
