import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/cart.dart';
import 'package:flutter_app_2/utilities/lists.dart';
import 'package:flutter_app_2/utilities/prod.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
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
                      'Best Seller',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 800,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 2 / 3, //ratio of width to height
                    ),
                    itemCount: bags2.length,
                    //itemBuilder same as we did for listview.builder in dashboard
                    itemBuilder: (BuildContext context, int index) {
                      final feeds = bags2[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Prod(),
                            ),
                          );
                        },
                        child: Card(
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
                                            'assets/images/${feeds['image']}.png'),
                                        fit: BoxFit.cover,
                                      ),
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
                                        Text('${feeds['title']}'),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '${feeds['price']}',
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
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Cart(),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
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
}
