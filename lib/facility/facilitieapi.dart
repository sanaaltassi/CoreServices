import 'dart:convert';

import 'package:http/http.dart' as http;
class FacilitiesApi{
  getFacilities() async{

    var response = await http.get(Uri.parse('https://gist.githubusercontect.com/'));
    var responseJson = jsonDecode(response.body);
    print(responseJson["data"][1]["name"]);
  }

}