import 'package:bracit_task1/screens/home_screen.dart';
import 'package:bracit_task1/screens/nav_page/calender_page.dart';
import 'package:bracit_task1/screens/nav_page/location_page.dart';

import 'package:bracit_task1/screens/nav_page/save_page.dart';
import 'package:bracit_task1/screens/second_screen.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final pages = [
    HomeScreen(),
    LocationPage(),
    CalenderPage(),
    SecondScreen(),
    SavePage(),
    //ContactPage(),

  ];
  void onTapPage(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        onTap: onTapPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal.shade200,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: false,
        currentIndex: currentIndex,

        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

            //backgroundColor: Colors.red.shade200,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
            //backgroundColor: Colors.yellow.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calender',
            //backgroundColor: Colors.red.shade200,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Contact',
            // backgroundColor: Colors.yellow.shade900,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Save',
            //backgroundColor: Colors.red.shade200,
          ),

        ],
      ),

    );
  }
}
