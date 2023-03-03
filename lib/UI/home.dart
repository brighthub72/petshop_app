import 'package:flutter/material.dart';
import 'package:flutter_app_2/UI/dashboard.dart';
import 'package:flutter_app_2/utilities/profsel.dart';
import 'package:flutter_app_2/utilities/profsel2.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Home extends StatefulWidget {

  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemPosition = 0;
  List children = [
    //with this, we can call all our created pages like for instance, Dashboard() will take us to the dashboard screen
    Dashboard(),
    Text('Home'),
    Text('Podcast'),
    Profsel2(),
    //Dashboard()
  ];
  

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: children[_selectedItemPosition],
           bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        selectedItemColor: Color(0xFFFF9000),
        height: 60,
        //shape: bottomBarShape,
        padding: EdgeInsets.all(10),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.white,
        //selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.blueGrey,

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.access_time)),
          BottomNavigationBarItem(icon: Icon(Icons.lock_outline)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined)),
        ],
      ),
           
       );
  }
}