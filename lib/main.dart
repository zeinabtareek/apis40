import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bottom_nav_bar/botom_nav_bar.dart';
import 'home/controller/home.dart';
import 'home/screen/home.dart';
import 'package:http/http.dart'as http;

import 'login_screen/signUp_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home:  Home()
      home:  SignUpScreen()
      // home:  BottomNvBarScreen()
      // home:   MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class Test extends StatelessWidget {
    Test({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
final controller=Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          TextButton(onPressed: () async {
            controller.getNewFunc();
            // print('#####');
            // final response =await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=83a16eac1752497383cde0805ec13a91'));
            // print(response.body);
            // print(response.statusCode);
          }, child: Text('click me'))
        ],
      ),
    );
  }
}
