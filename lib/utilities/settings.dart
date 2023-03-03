import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/lists.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                      'Settings Page',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Account',
                  style: text20.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: details.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final info = details[index];

                    return GestureDetector(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(5),
                        leading: CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Color.fromARGB(255, 240, 239, 239),
                          child: Icon(
                            info['icon'],
                            color: Colors.black,
                          ),
                        ),
                        title: Text('${info['title']}', style: text15),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => info['ont'],
                        ),
                      );
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Help',
                  style: text20.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: help.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final sos = help[index];

                    return ListTile(
                      contentPadding: EdgeInsets.all(5),
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 240, 239, 239),
                        maxRadius: 20,
                        child: Icon(sos['icon'], color: Colors.black,),
                      ),
                      title: Text('${sos['title']}', style: text15),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 140,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: Color(0xFFFF9000),
                      ),
                    ),
                    child: Text(
                      'Log Out',
                      style: text16.copyWith(
                        color: Color(0xFFFF9000),
                      ),
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
