import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/bestsell.dart';
import 'package:flutter_app_2/utilities/grid.dart';
import 'package:flutter_app_2/utilities/notify.dart';
import 'package:flutter_app_2/utilities/search.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List bags = [
    {'image': 'pbag', 'title': 'RC Kitten', 'price': r'$20,99'},
    {'image': 'bag5', 'title': 'RC Persian', 'price': r'$22,99'},
  ];

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Location'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                          onTap: () {
                            _bottomSheet(context);
                          },
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Jebres, Surakarta',
                          style: text14s,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Search(),
                                  ),
                                );
                              },
                              child: Icon(Icons.search),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notify(),
                                  ),
                                );
                              },
                              child: Icon(Icons.notifications_outlined),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 5,
                        child: Material(
                          child: Container(
                            height: 140,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/cgb1.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 205,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage('assets/images/bag.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        left: 160,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Royal Canin',
                                style: text14s.copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Adult Pomeraniann',
                                style: text14s.copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Get an interesting promo\nhere, without conditions',
                                style: text14.copyWith(
                                  color: Colors.white,
                                  wordSpacing: 3,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: text16,
                    ),
                    Text(
                      'View All',
                      style: text12.copyWith(
                        color: Color(0xFFFF9000),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: null,
                      child: Icon(Icons.arrow_back),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Food',
                        style: text14s,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: null,
                      child: Text('Toys'),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: text14.copyWith(color: Colors.grey)),
                    ),
                    OutlinedButton(
                      onPressed: null,
                      child: Text('Accessories'),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: text14.copyWith(color: Colors.grey)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Seller',
                      style: text16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Grid(),
                          ),
                        );
                      },
                      child: Text(
                        'View All',
                        style: text12.copyWith(
                          color: Color(0xFFFF9000),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('${feed['title']}'),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${feed['price']}',
                                        style: text40.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
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
                Text(
                  'Location',
                  style: text14s.copyWith(fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search your location',
                    hintStyle: text15.copyWith(color: Colors.grey),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    'Track your Location',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text('automatically selects your\ncurrent location',
                          style: text14.copyWith(
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}


// is supposed to cover the container with the bag image
// child: Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Container(
//                             height: 200,
//                             width: 150,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(25),
//                               image: DecorationImage(
//                                 image: AssetImage('assets/images/bag.png'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),