// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_2/UI/auth/login.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login()),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Meet your\nanimal needs\nhere', style: text40),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/illust.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Get interesting promos here, register your\naccount immediately so you can meet your animal needs.',
                  style: text14.copyWith(color: Colors.grey),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 130,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, 
                      child: Text('Get started', style: text14.copyWith(fontWeight: FontWeight.w800),),
                      
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
