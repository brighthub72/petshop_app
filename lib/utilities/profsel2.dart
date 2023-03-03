import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/lists.dart';
import 'package:flutter_app_2/utilities/profsel.dart';
import 'package:flutter_app_2/utilities/settings.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Profsel2 extends StatefulWidget {
  const Profsel2({Key? key}) : super(key: key);

  @override
  State<Profsel2> createState() => _Profsel2State();
}

class _Profsel2State extends State<Profsel2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 235, 235),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Color(0xFFFF9000),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'Profile',
                            style: text15.copyWith(color: Colors.white),
                          ),
                        ),
                        Tab(
                          text: 'Seller Mode',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 750,
                    width: double.infinity,
                    child: TabBarView(
                      children: [
                        abdul(),
                        pitta(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column pitta() {
    return Column(
      children: [
        Container(
          height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Material(
                  child: Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cgb2.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 137,
                child: Material(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 231, 230, 230),
                    maxRadius: 50,
                    foregroundColor: Color.fromARGB(255, 209, 100, 4),
                  ),
                ),
              ),
              Positioned(
                top: 143,
                left: 160,
                child: Material(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/p.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Pittashop',
          style: text20.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '109',
                  style: text18,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Followers',
                  style: text12.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '992',
                  style: text18,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Following',
                  style: text12.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '80',
                  style: text18,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Sales',
                  style: text12.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Product'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Sold'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Stats'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            itemCount: bags.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final feed = bags[index];

              return Card(
                color: Color.fromARGB(224, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 200,
                  width: 175,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${feed['image']}.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${feed['title']}'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${feed['price']}',
                                style: text40.copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 25),
                              ),
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
              );
            },
          ),
        ),
      ],
    );
  }

  Column abdul() {
    return Column(
      children: [
        Container(
          height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Material(
                  child: Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cgb3.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 137,
                child: Material(
                  child: Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sharp.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Abduldul',
          style: text20.copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Saved'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
              child: Text('Edit Profile'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            itemCount: bags.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final feed = bags[index];

              return Card(
                color: Color.fromARGB(224, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 200,
                  width: 175,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${feed['image']}.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${feed['title']}'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${feed['price']}',
                                style: text40.copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 25),
                              ),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
