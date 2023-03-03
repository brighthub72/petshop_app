import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Paysuc extends StatefulWidget {
  const Paysuc({Key? key}) : super(key: key);

  @override
  State<Paysuc> createState() => _PaysucState();
}

class _PaysucState extends State<Paysuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment\nSuccess!',
                  style: text40,
                ),
                SizedBox(height: 40),
                Text(
                  'your order is being prepared by the shop, the courier will send it to your address',
                  style: text14.copyWith(color: Colors.grey),
                ),
                SizedBox(
                  height: 460,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 140,
                      vertical: 20
                    ),
                  ),
                    child: Text(
                      'Go Home',
                      style: text14s.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
