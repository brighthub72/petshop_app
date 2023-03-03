import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Toggle extends StatefulWidget {
  //const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
  final _flutter = false;
}

class _ToggleState extends State<Toggle> {
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
                      width: 20,
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
                    SizedBox(width: 70),
                    Text(
                      'Notification',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Social',
                  style: text20.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                SwitchListTile(
                  value: true,
                  activeColor: Color(0xFFFD9340),
                  inactiveTrackColor: Colors.grey,
                  onChanged: ((value) {
                    setState(() {
                      
                    },);
                  }),
                  title: Text('Liked Post'),
                ),
                SwitchListTile.adaptive(
                  value: true,
                  onChanged: ((value) {}),
                  title: Text('New Message'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Store',
                  style: text20.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                SwitchListTile(
                  value: true,
                  onChanged: ((value) {}),
                  title: Text('Item Sold'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
