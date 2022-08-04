import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utilities/widgets/list_view_container.dart';
import 'home_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,

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
              flex: 2,
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                              const Icon(
                                Icons.message_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 65,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOJRHQZ5QSiy_HBVrnDrzSgtEP4Uvk5iZNCxzvZf5amLu_7TUl2iUfJuVbvbsdNAscOeU&usqp=CAU'),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Tony Stark',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Albany, New York',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '450',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 60,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child:


              // ListView.builder(
              //     itemBuilder: (context, index){
              //   return ListViewContainer();
              // }),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Activities',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2),
                        child: Row(

                          children: const [
                            Icon(
                              Icons.arrow_circle_right,
                              color: Colors.pink,
                              size: 30,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              'Joined the list',

                              style: TextStyle(color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top:8),
                        child: Row(
                          children:  [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOJRHQZ5QSiy_HBVrnDrzSgtEP4Uvk5iZNCxzvZf5amLu_7TUl2iUfJuVbvbsdNAscOeU&usqp=CAU'),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hillsong Evening College, UK',
                                  style: TextStyle(fontSize: 16, color: Colors.black54,),
                                ),
                                Text(
                                  '2016/2017',
                                  style: TextStyle(fontSize: 15, color: Colors.black54,),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Mon, 17 Oct, 16:00',
                                  style: TextStyle(fontSize: 15, color: Colors.black45,),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                  const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child:  Divider(
                      height: 5,
                      thickness: 3,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2),
                        child: Row(

                          children: const [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.pink,
                              size: 30,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              'Bought Tickets',

                              style: TextStyle(color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top:8),
                        child: Row(
                          children:  [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpDMFCYnAANPd4Va-6MvrhtxYc9XxUlGxYShAa2UkUO2KHAiidrMFjgEKlB3zoAc1qFao&usqp=CAU'),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hillsong Evening College, UK',
                                  style: TextStyle(fontSize: 16, color: Colors.black54,),
                                ),
                                Text(
                                  '2016/2017',
                                  style: TextStyle(fontSize: 15, color: Colors.black54,),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Mon, 17 Oct, 16:00',
                                  style: TextStyle(fontSize: 15, color: Colors.black45,),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ],
              ),





            )
          ],
        ),
      ),
    );
  }
}
