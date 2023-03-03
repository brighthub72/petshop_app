import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Setpsd extends StatefulWidget {

  const Setpsd({ Key? key }) : super(key: key);

  @override
  State<Setpsd> createState() => _SetpsdState();
}

class _SetpsdState extends State<Setpsd> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot\nPassword',
                  style: text40,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Water is life. Water is a basic human need. In various lines of life, humans need water.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(height: 35,),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    filled: true,
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                  ),
                ),
                SizedBox(height: 260,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?', style: text14s,),
                    Text(' Login', style: text14s.copyWith(color: Color(0xFFFF9000)),)
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Reset password',
                        style: text20,
                      ),
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