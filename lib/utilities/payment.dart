import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/payment2.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 25,
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
                    SizedBox(width: 60),
                    Text(
                      'Payment Method',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Card no.',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Expiry date',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'CVV',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 270,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 155,
                        vertical: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Payment2(),
                        ),
                      );
                    },
                    child: Text(
                      'Save',
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
