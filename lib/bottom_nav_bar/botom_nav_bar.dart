import 'package:apis40/home/controller/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/screen/home.dart';

class BottomNvBarScreen extends StatelessWidget {
    BottomNvBarScreen({Key? key}) : super(key: key);
  final controller =Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    List <Widget>screens=[
      Sports(),
      Science(),
      Technology(),
    ];
    return Scaffold(
      // appBar: ,
      // floatingActionButton: ,
      // drawer: ,
      bottomNavigationBar:Obx(()=>BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: (v){
          controller.onTap(v);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.sports),label: 'Sports'),
          BottomNavigationBarItem(icon: Icon(Icons.science),label: 'Science'),
          BottomNavigationBarItem(icon: Icon(Icons.code),label: 'TECHNOLOGY'.toLowerCase()),

        ],
        
      ) ,
      ) ,
        body: Obx(()=>screens[controller.currentIndex.value]),
    );
  }
}
