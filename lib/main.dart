import 'package:bracit_task1/screens/home_screen.dart';
import 'package:bracit_task1/screens/main_page.dart';
import 'package:bracit_task1/screens/nav_page/calender_page.dart';
import 'package:bracit_task1/screens/nav_page/location_page.dart';
import 'package:bracit_task1/screens/nav_page/save_page.dart';
import 'package:bracit_task1/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: const MainPage(),
      //home: MainPage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>  MainPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) =>  HomeScreen(),
        '/second': (context) =>  SecondScreen(),
        '/location': (context) =>  LocationPage(),
        '/calender': (context) =>  CalenderPage(),
        '/save': (context) =>  SavePage(),

      },
    );
  }
}


