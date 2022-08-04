import 'package:bracit_task1/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:bracit_task1/model/search.dart';

import '../model/person.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController keyboardController = TextEditingController();

  @override
  void initState() {
    searchedList = personList;
    super.initState();
  }

  int currentIndex = 0;
  final pages = [
    Center(child: Text('Home', style: TextStyle(fontSize: 60),),),
    Center(child: Text('Location', style: TextStyle(fontSize: 60),),),
    Center(child: Text('Date and Time', style: TextStyle(fontSize: 60),),),
    Center(child: Text('Contact', style: TextStyle(fontSize: 60),),),
    Center(child: Text('Save', style: TextStyle(fontSize: 60),),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red.shade50,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red.shade200,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
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

      // bottomNavigationBar: const GNav(
      //   backgroundColor: Colors.white,
      //   tabBackgroundColor: Colors.deepOrangeAccent,
      //   activeColor: Colors.white,
      //   color: Colors.grey,
      //   padding: EdgeInsets.all(15.0),
      //   tabs: [
      //     GButton(
      //       icon: Icons.home,
      //       text: 'Home',
      //     ),
      //     GButton(
      //       icon: Icons.location_on_outlined,
      //       text: 'Location',
      //     ),
      //     GButton(
      //       icon: Icons.calendar_today_outlined,
      //       text: 'Calender',
      //     ),
      //     GButton(
      //       icon: Icons.people,
      //       text: 'Contact',
      //     ),
      //     GButton(
      //       icon: Icons.bookmark,
      //       text: 'Save',
      //     ),
      //   ],
      // ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/orange-pink-watercolor-background_125540-1090.jpg?w=2000'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.close, color: Colors.white, size: 35),
                            Text(
                              'Search',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            SizedBox(width: 35),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 40, left: 15, right: 15),
                        child: TextField(
                          controller: keyboardController,
                          onChanged: (name) {
                            setState(() {
                              Search().searchPerson(name);
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  keyboardController.clear();
                                  searchedList = personList;
                                });
                              },
                              child: const Icon(Icons.close),
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: searchedList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SecondScreen();
                        },
                      ));
                    },
                    child: PersonInfo(
                      follower: searchedList[index].followers,
                      name: searchedList[index].name,
                      url: searchedList[index].profile,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonInfo extends StatelessWidget {
  final String url;
  final String name;
  final String follower;

  const PersonInfo({
    Key? key,
    required this.url,
    required this.name,
    required this.follower,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      url,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${follower} followers',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.group_add_rounded,
                size: 30,
                color: Colors.pink,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Divider(
            height: 5,
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
