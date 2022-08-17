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
      onGenerateRoute: generateRoute,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),


      //home: const MainPage(),
      //home: MainPage(),
      //initialRoute: '/',
      //routes: {
        // '/': (context) =>  MainPage(),
        // '/home': (context) =>  HomeScreen(),
        // '/second': (context) =>  SecondScreen(),
        // '/location': (context) =>  LocationPage(),
        // '/calender': (context) =>  CalenderPage(),
        // '/save': (context) =>  SavePage(),

     // },



    );

  }
}

Route<dynamic>? generateRoute(RouteSettings settings) {
  final arg = settings.arguments;
  if (settings.name == '/') {
    return MaterialPageRoute(builder: (context) => MainPage());
  } else if (settings.name == 'first_screen') {
    MaterialPageRoute(builder: (context) => HomeScreen());
  } else if (settings.name == SecondScreen.routename) {
    final argument = arg as SecondScreen;
    return MaterialPageRoute(
      builder: (context) =>
          SecondScreen(
            userName: argument.userName,
            userEmail: argument.userEmail,
            following: argument.following,
            followers: argument.followers,
            imageUrl: argument.imageUrl,
          ),
    );


    // } else if(settings.name==Extra1.routename){
    //   return MaterialPageRoute(builder: (context)=>Extra1());
    // }else if(settings.name==MainPage.routename){
    //   return MaterialPageRoute(builder: (context)=>MainPage());
    // }

  }

  }


