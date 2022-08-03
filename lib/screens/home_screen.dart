import 'package:bracit_task1/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List name = ['Johny', 'Tony', 'Tom', 'Sunny', 'Anny', 'Bunny', 'Cherry'];
List followers = ['1012', '5234', '3254', '1657', '5765', '67576', '6454'];
List profileImage = [
  'https://i.pinimg.com/originals/a6/58/32/a65832155622ac173337874f02b218fb.png',
  'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584__340.png',
  'https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-homme.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH5phKmEGHBNcYZZKr0X1TALq50cjDWJriiQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKsFbgK4eIW6q_AIbtqvisB36iFVXCIOajWWkhwpRmPpvuVaOkFCxqvEowI6EC4dq7rb0&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOJRHQZ5QSiy_HBVrnDrzSgtEP4Uvk5iZNCxzvZf5amLu_7TUl2iUfJuVbvbsdNAscOeU&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNXRUbPFVa_XKeCgIEriNbUGpUyX4-YdeYrg&usqp=CAU'
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,

      bottomNavigationBar: const GNav(
        backgroundColor: Colors.white,
        tabBackgroundColor: Colors.deepOrangeAccent,
        activeColor: Colors.white,
        color: Colors.grey,
        padding: EdgeInsets.all(15.0),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.location_on_outlined,
            text: 'Location',
          ),
          GButton(
            icon: Icons.calendar_today_outlined,
            text: 'Calender',
          ),
          GButton(
            icon: Icons.people,
            text: 'Contact',
          ),
          GButton(
            icon: Icons.bookmark,
            text: 'Save',
          ),
        ],
      ),



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
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.close),
                          ),
                          style: TextStyle(
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
                itemCount: 7,
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
                      follower: followers[index],
                      name: name[index],
                      url: profileImage[index],
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
                      SizedBox(
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
                color: Colors.grey,
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
