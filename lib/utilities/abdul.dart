import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Abdul extends StatefulWidget {
  const Abdul({Key? key}) : super(key: key);

  @override
  State<Abdul> createState() => _AbdulState();
}

class _AbdulState extends State<Abdul> {
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
                      width: 15,
                    ),
                    Card(
                      elevation: 1,
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
                      'Account',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
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
                                    image:
                                        AssetImage('assets/images/sharp.png'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 15,
                        child: Material(
                          child: CircleAvatar(
                            child: Row(
                              children: [Icon(Icons.edit_outlined)],
                            ),
                            maxRadius: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 105,
                        right: 130,
                        child: Material(
                          child: CircleAvatar(
                            child: Row(
                              children: [
                                Icon(Icons.edit_outlined),
                              ],
                            ),
                            maxRadius: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Abduldul',
                    style: text20.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Name',
                  style: text14,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Abdul',
                    hintStyle: text12.copyWith(color: Colors.grey),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Username',
                  style: text14,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Abdul',
                    hintStyle: text12.copyWith(color: Colors.grey),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Email',
                  style: text14,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Abdul',
                    hintStyle: text12.copyWith(color: Colors.grey),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Save Changes',
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
