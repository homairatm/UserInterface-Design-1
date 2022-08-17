import 'dart:convert';
import 'package:bracit_task1/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:bracit_task1/model/search.dart';
import 'package:http/http.dart' as http;
import '../model/UserModel.dart';
import '../model/person.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserModel? userModel;
  TextEditingController keyboardController = TextEditingController();

  @override
  void initState() {
    initFunction();
    super.initState();
  }

  Future<UserModel?> fetchData() async {
    final response =
    await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    print('This is Response: ${response.body.toString()}');
    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      return throw Exception('Failed to load album');
    }
  }

  void initFunction() async {
    UserModel? data = await fetchData();
    setState(() {
      userModel = data;
    });
  }


  @override
  Widget build(BuildContext context) {
    // print('user list data + ${futureUser.toString()}');
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.teal.shade50,


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
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX7F1RisssddR7YffMy81PEYBkxYFwv8fLOiPFUOo7p_Q7pNCjgOSZFr9fdUwo6FX-aTQ&usqp=CAU'),
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
                itemCount: userModel!.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/second');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(
                        followers: userModel!.data![index].id.toString(),
                        userName: userModel!.data![index].firstName.toString(),
                        imageUrl: userModel!.data![index].avatar.toString(),
                        userEmail: userModel!.data![index].email.toString(),

                      )));
                    },
                    child: PersonInfo(
                      follower: userModel!.data![index].id.toString(),
                      name: userModel!.data![index].firstName.toString(),
                      url: userModel!.data![index].avatar.toString(),
                      email: userModel!.data![index].email.toString(),
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
  final String email;
  const PersonInfo({
    Key? key,
    required this.url,
    required this.name,
    required this.follower,
    required this.email,
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
                color: Colors.teal,
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
