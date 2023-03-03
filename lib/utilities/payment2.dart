import 'package:flutter/material.dart';
import 'package:flutter_app_2/UI/dashboard.dart';
import 'package:flutter_app_2/UI/home.dart';
import 'package:flutter_app_2/utilities/profsel.dart';
import 'package:flutter_app_2/utilities/profsel2.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Payment2 extends StatefulWidget {
  const Payment2({Key? key}) : super(key: key);

  @override
  State<Payment2> createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    SizedBox(width: 80),
                    Text(
                      'Payment Method',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Choose Your Payment Method',
                  style: text20.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Paypal', style: TextStyle(color: Colors.grey)),
                      Radio(value: 1, groupValue: 1, onChanged: (value) {})
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bank Transfer',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Radio(value: 1, groupValue: 0, onChanged: (value) {})
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 140,
                        vertical: 20,
                      ),
                    ),
                    child: Text(
                      'Checkout',
                      style: text14s.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
