import 'package:apis40/login_screen/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
    SignUpScreen({Key? key}) : super(key: key);
  final controller=Get.put(AuthController());
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SIGN UP'),backgroundColor: Colors.transparent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 348,
              child:  TextFormField(
                controller:controller.nameController ,
                 style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold ),
                keyboardType: TextInputType.name,

                validator: (value) {
                  if (value == null || value.isEmpty) {//eve.holt@reqres.in
                    return 'please_enter_your_user_name';
                  }
                  return null;
                },
                onChanged: (newValue) async{ },
                decoration:

                InputDecoration(
                  hintText: "user name",
                  filled: true,
                  fillColor: Colors.white,

                  isDense: true,
                  // Added this
                  contentPadding: EdgeInsets.all(20),
                  hintStyle: TextStyle(color: Colors.green, fontSize: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:  Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 348,
              child:  TextFormField(
                controller: controller.passController,
                style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold ),
                keyboardType: TextInputType.name,


                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please_enter_your_user_name';
                  }
                  return null;
                },
                onChanged: (newValue) async{
                  // print(newValue);
                  controller.password=newValue;
                  print(controller.password);
                },
                decoration:

                InputDecoration(
                  hintText: "password",
                  filled: true,
                  fillColor: Colors.white,

                  isDense: true,
                  // Added this
                  contentPadding: EdgeInsets.all(20),
                  hintStyle: TextStyle(color: Colors.green, fontSize: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:  Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  controller.register(email: controller.nameController.text, password: controller.passController.text);
                }, child: Text('SIGN UP')),

                ElevatedButton(onPressed: (){
                  controller.signIn(email: controller.nameController.text, password:controller.password);
                }, child: Text('SIGN IN')),

              ],
            )
          ],
        ),
      ),
    );
  }
}
