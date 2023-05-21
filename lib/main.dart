import 'package:f0/users/home_user/CartPage.dart';
import 'package:f0/users/home_user/ProductPage.dart';
import 'package:f0/users/login/login_screen.dart';
import 'package:f0/users/login/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:f0/users/home_user/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: 'Clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: FutureBuilder(
        builder: (context, dataSnapShow){
          return LoginScreen();
          },
    ),
      routes: {
        "cartPage": (context) => CartPage(),
        "productPage": (context) => ProductPage(),
        "/SignUpScreen": (context) => SignUpScreen(),
        "/HomePage": (context) => HomePage(),
      },
    );
  }


}


