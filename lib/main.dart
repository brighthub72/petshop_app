// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_2/UI/auth/login.dart';
import 'package:flutter_app_2/UI/auth/provemail.dart';
import 'package:flutter_app_2/UI/auth/register.dart';
import 'package:flutter_app_2/UI/auth/setpsd.dart';
import 'package:flutter_app_2/UI/dashboard.dart';
import 'package:flutter_app_2/UI/home.dart';
import 'package:flutter_app_2/UI/splash.dart';
import 'package:flutter_app_2/utilities/abdul.dart';
import 'package:flutter_app_2/utilities/bestsell.dart';
import 'package:flutter_app_2/utilities/cart.dart';
import 'package:flutter_app_2/utilities/faq.dart';
import 'package:flutter_app_2/utilities/grid.dart';
import 'package:flutter_app_2/utilities/notify.dart';
import 'package:flutter_app_2/utilities/notify2.dart';
import 'package:flutter_app_2/utilities/payment.dart';
import 'package:flutter_app_2/utilities/payment2.dart';
import 'package:flutter_app_2/utilities/paysuc.dart';
import 'package:flutter_app_2/utilities/privacy.dart';
import 'package:flutter_app_2/utilities/prod.dart';
import 'package:flutter_app_2/utilities/profsel.dart';
import 'package:flutter_app_2/utilities/profsel2.dart';
import 'package:flutter_app_2/utilities/search.dart';
import 'package:flutter_app_2/utilities/settings.dart';
import 'package:flutter_app_2/utilities/styles.dart';
import 'package:flutter_app_2/utilities/toggle.dart';

void main() {
  runApp(/*const*/ MyApp());
}

//If you must use the const(s) that have been commented above and below, then ensure to open
//the test folder and inside the widget_test.dart file, uncomment the const beside the MyApp().
//These are all done so that the material color customized below can be set as the PrimarySwatch.

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  MaterialColor mycolor = MaterialColor(0xFFFD9340, <int, Color>
  {
    50: Color(0xFFFD9340),
    100: Color(0xFFFD9340),
    200: Color(0xFFFD9340),
    300: Color(0xFFFD9340),
    400: Color(0xFFFD9340),
    500: Color(0xFFFD9340),
    600: Color(0xFFFD9340),
    700: Color(0xFFFD9340),
    800: Color(0xFFFD9340),
    900: Color(0xFFFD9340),
  },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: mycolor,
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.5,),
              borderRadius: BorderRadius.circular(25)
              ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFD9340), width: 2.5,),
              borderRadius: BorderRadius.circular(25),
            ),
            focusColor: Color(0xFFFF9000),
            contentPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 27),
            hintStyle: text14.copyWith(color: Colors.grey),
            
            //disabledBorder: InputBorder(borderSide: BorderSide.none),
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),

          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color.fromARGB(255, 240, 239, 239),
            side: BorderSide.none,
            textStyle: text14.copyWith(color: Colors.blue)
          ),
        ),
        
        
      ),
      home: Faq(),
      
    );
  }
}
