// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create\nNew Account',
                  style: text40,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Water is life. Water is a basic human need. In various lines of life, humans need water.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Checkbox(value: false, onChanged: null),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'I agree to the ',
                          style: text14s,
                          children: [
                            TextSpan(
                              text: 'Terms of Service ',
                              style: text14s.copyWith(
                                  color: Color(0xFFFF9000)),
                            ),
                            TextSpan(
                              text: 'and',
                              style: text14s,
                            ),
                            TextSpan(
                              text: '\nPrivacy Policy',
                              style: text14s.copyWith(
                                  color: Color(0xFFFF9000)),
                            ),
                          ],),
                    ),
                  ],
                ),
                SizedBox(height: 90,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?', style: text14s,),
                    Text(' Login', style: text14s.copyWith(color: Color(0xFFFF9000)),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Text(
                        'Get started',
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
