import 'package:connectus/layout/layout.dart';
import 'package:connectus/modules/screens/homescreen.dart';
import 'package:connectus/modules/loginscreen.dart';
import 'package:connectus/modules/registeration.dart';
import 'package:connectus/modules/registeration2.dart';
import 'package:connectus/modules/sharednavcupit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(

fontFamily: "Rammetto One",
        scaffoldBackgroundColor:  HexColor("#92D3CE"),

      ),
      home:const Layout(),
      routes: {
        'Register': (context) {
          return RegisterScreen();
        },
        'Login': (context) {
          return LoginScreen();
        },
        'Register2': (context) {
          return RegisterScreen2();
        },
        'home': (context) {
          return const sharednav();

        }
      });
  }
}






