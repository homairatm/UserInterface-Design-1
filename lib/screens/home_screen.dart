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
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Fpremium-vector%2Fportrait-young-man-with-beard-hair-style-male-avatar-vector-illustration_266660-423.jpg%3Fw%3D2000&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Fpremium-vector%2Fportrait-young-man-with-beard-hair-style-male-avatar-vector-illustration_19282811.htm&tbnid=tqZuBfz7g4am3M&vet=10CAMQxiAoAGoXChMIqKy4m-ip-QIVAAAAAB0AAAAAEAc..i&docid=5vlSWlBe2QU8-M&w=2000&h=2000&itg=1&q=person%20avatar%20images&ved=0CAMQxiAoAGoXChMIqKy4m-ip-QIVAAAAAB0AAAAAEAc',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fa7%2F0e%2F16%2Fa70e1675c7bc001f1578aa76bb0a7819.png&imgrefurl=https%3A%2F%2Fin.pinterest.com%2Fpin%2F536702480572227627%2F&tbnid=G_f14u2Tvaa_IM&vet=10CAUQxiAoBGoXChMIqKy4m-ip-QIVAAAAAB0AAAAAEAw..i&docid=BllMCoqB10UWlM&w=512&h=512&itg=1&q=person%20avatar%20images&ved=0CAUQxiAoBGoXChMIqKy4m-ip-QIVAAAAAB0AAAAAEAw',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Ficones.pro%2Fwp-content%2Fuploads%2F2021%2F03%2Favatar-de-personne-icone-homme.png&imgrefurl=https%3A%2F%2Ficones.pro%2Fen%2Fman-icon-person-avatar%2F&tbnid=n_UH09UkBDlIOM&vet=12ahUKEwijyK6a6Kn5AhUx_TgGHWWsBhYQMygoegUIARCsAg..i&docid=ejrcY8J5Ny9SDM&w=512&h=512&q=person%20avatar%20images&ved=2ahUKEwijyK6a6Kn5AhUx_TgGHWWsBhYQMygoegUIARCsAg',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Ficones.pro%2Fwp-content%2Fuploads%2F2021%2F03%2Favatar-de-personne-icone-femme.png&imgrefurl=https%3A%2F%2Ficones.pro%2Fen%2Fwoman-person-icon-avatar%2F&tbnid=brWYXBS8ddCWhM&vet=12ahUKEwjI0bns9Kn5AhUzS2wGHdy_COsQxiAoAXoECAAQGQ..i&docid=PcxR59FDq6MXyM&w=512&h=512&itg=1&q=person%20avatar%20images&ved=2ahUKEwjI0bns9Kn5AhUzS2wGHdy_COsQxiAoAXoECAAQGQ',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2014%2F03%2F24%2F17%2F19%2Fteacher-295387_960_720.png&imgrefurl=https%3A%2F%2Fpixabay.com%2Fvectors%2Fteacher-female-woman-girl-avatar-295387%2F&tbnid=6-MfUl0HRi7umM&vet=12ahUKEwi8gaLw9Kn5AhXdZWwGHS7wAw4QxiAoBHoECAAQFQ..i&docid=KBP_bLE1GD5_dM&w=746&h=720&itg=1&q=person%20avatar%20images&ved=2ahUKEwi8gaLw9Kn5AhXdZWwGHS7wAw4QxiAoBHoECAAQFQ'
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,


      bottomNavigationBar: const GNav(
        backgroundColor: Colors.white,
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
                        margin: EdgeInsets.only(top: 50, left: 10, right: 10),
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
