import 'package:flutter/material.dart';
import 'package:flutter_app_2/utilities/styles.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                      'Search',
                      style: text20.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search your Product',
                    hintStyle: text15.copyWith(color: Colors.grey),
                    filled: true,
                  ),
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
                        style: text14s.copyWith(color: Colors.white),
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
                Text('Recent', style: text16,),
                ListView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      

                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        title: Text('Royal Canin Persian 500g', style: text12.copyWith(color: Colors.grey)),
                        trailing: Icon(Icons.cancel_presentation_outlined),
                        
                        
                        
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
