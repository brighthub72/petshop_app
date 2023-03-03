import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/lists.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Notify2 extends StatefulWidget {
  const Notify2({Key? key}) : super(key: key);

  @override
  State<Notify2> createState() => _Notify2State();
}

class _Notify2State extends State<Notify2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                        'Notification',
                        style: text20.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
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
                              'Activity',
                              style: text15.copyWith(color: Colors.white),
                            ),
                          ),
                          Tab(
                            text: 'Seller Mode',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ListView.builder(
                    itemCount: sel.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final mode = sel[index];

                      return ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading:
                            Image.asset('assets/images/${mode['image']}.png'),
                        title: Text("${mode['title']}", style: text15),
                        trailing: mode['t'] != null
                            ? Icon(
                                mode['t'],
                              )
                            : CircleAvatar(
                                maxRadius: 25,
                                backgroundColor:
                                    Color.fromARGB(255, 217, 216, 216),
                                child: Image.asset('assets/images/bag5.png')),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text("${mode['sub']}",
                                style: text12.copyWith(color: Colors.grey)),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
