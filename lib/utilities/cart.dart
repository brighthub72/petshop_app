import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/payment.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
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
                    SizedBox(width: 85),
                    Text(
                      'Cart',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(bottom: 15),
                      elevation: 10,
                      child: Container(
                        height: 140,
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 249, 248, 248),
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 120,
                                  width: 90,
                                  child: Image.asset('assets/images/bag5.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Royal Canin Adult',
                                  style: text16,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'for 2-3 years',
                                  style: text12.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  r'$12.99',
                                  style: text18.copyWith(
                                    color: Color(0xFFFF9000),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 130,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 140,
                      vertical: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment(),
                      ),
                    );
                  },
                  child: Text(
                    'Checkout',
                    style: text14s.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext c) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('3 items'), Text(r'$38.97')],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  r'$1.99',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
