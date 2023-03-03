import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Bestsell extends StatefulWidget {
  const Bestsell({Key? key}) : super(key: key);

  @override
  State<Bestsell> createState() => _BestsellState();
}

class _BestsellState extends State<Bestsell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(13),
          child: Column(
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 280,
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/pbag.png'),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('RC Kitten'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(r'$20,99', style: text40.copyWith(fontWeight: FontWeight.w700, fontSize: 25),),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(5),
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
