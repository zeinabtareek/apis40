//weather , news ,movies
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;


class AuthController extends GetxController{

  final nameController=TextEditingController();
  final passController=TextEditingController();
  String name='';
  String password='';
  ///SignUp
  register({required email, required password})async{
   final response= await http.post(
     Uri.parse('https://reqres.in/api/register'),
     headers: {'Content-Type':'application/json ; charset=UTF-8'},
     body:jsonEncode(<String,String>{
       "email":
       email.toString(),
       // "eve.holt@reqres.in",
       "password":
       password.toString()
       // "pistol"
     },)
   );
   print(response.body);
   print(response.statusCode);
    if(response.statusCode==200){
      print('User register successfully!!');
    }
    else{
      print('Error during register ');
    }
  }






  ///SignIn
  signIn({required email, required password})async{
   final response= await http.post(

     Uri.parse('https://reqres.in/api/login'),
     headers: {'Content-Type':'application/json ; charset=UTF-8'},
     body:jsonEncode({
       "email": "eve.holt@reqres.in",
       "password": "mmmmm"
     })
   );
   print(response.body);
   print(response.statusCode);
    if(response.statusCode==200){
      print('User login successfully!!');
    }
    else{
      print('Error during Login ');
    }

  }
  

}