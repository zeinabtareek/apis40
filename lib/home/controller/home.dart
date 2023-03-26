import 'dart:convert';

import 'package:apis40/model/NewsModel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final url =
      'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=83a16eac1752497383cde0805ec13a91';

  @override
  void onInit() async {
// await getNews();
  }

  getNews(String category) async {

    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=83a16eac1752497383cde0805ec13a91'));
      // print(response.statusCode); //200
      print(response.body);
      if (response.statusCode == 200) {
        return NewsModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      print(e);
    }
  }

  ///bottomNavBar
  final currentIndex = 0.obs;

  onTap(v) {
    currentIndex.value = v;
  }
}

///Firebase
//create project
//cofigrations
///product
// enable  product
// package
//instance

///APIs
//1-test endPoint  (setUp ) =>200
//2-dart model for each end point ..varibales, constructor , tojjson , fromJson

//3-package
//4- implement api consuming (Func)
//5-convert json  Dart MModel(Object -NewsMModel)
//Build UI
