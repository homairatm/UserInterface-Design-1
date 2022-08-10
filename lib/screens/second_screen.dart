import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/ActModel.dart';
import '../utilities/widgets/list_view_container.dart';
import 'home_screen.dart';




class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  void initState() {
    getData();
  }
  List<ActModel> actModelList = [];
  Future <List<ActModel>> getData() async {
    var response = await http.get(
      Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json'));
    actModelList.clear();
    actModelList = (json.decode(response.body) as List)
    .map((i) => ActModel.fromJson(i))
        .toList();
    setState(() {
      actModelList;
    });

    return actModelList;
  }


  @override
  Widget build(BuildContext context) {
     // DateTime now = DateTime.now();
     // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    return Scaffold(
      backgroundColor: Colors.teal.shade50,


      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
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
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  'https://img.favpng.com/10/23/1/computer-icons-user-profile-avatar-png-favpng-ypy9BWih5X28x0zDEBeemwyx8_t.jpg'),
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
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Colors.teal,
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
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 8),
              child: Text(
                'Activities',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              flex: 2,

              child: ListView.builder(
                      itemCount: actModelList.length,

                      itemBuilder: (context, index){

                    return ListViewContainer(
                      id: actModelList[index].id.toString(),
                      name: actModelList[index].name,
                      price: actModelList[index].price,

                    );
                  }
                  ),









              //     Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(20.0),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: const [
              //           Text(
              //             'Activities',
              //             style: TextStyle(
              //               fontSize: 20,
              //               color: Colors.black54,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 2),
              //           child: Row(
              //             children: const [
              //               Icon(
              //                 Icons.arrow_circle_right,
              //                 color: Colors.teal,
              //                 size: 30,
              //               ),
              //               SizedBox(
              //                 width: 20,
              //               ),
              //               Text(
              //                 'Joined the list',
              //                 style: TextStyle(
              //                     color: Colors.black54, fontSize: 15),
              //               )
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 40, top: 8),
              //           child: Row(
              //             children: [
              //               const CircleAvatar(
              //                 radius: 40,
              //                 backgroundImage: NetworkImage(
              //                     'https://img.favpng.com/10/23/1/computer-icons-user-profile-avatar-png-favpng-ypy9BWih5X28x0zDEBeemwyx8_t.jpg'),
              //               ),
              //               const SizedBox(
              //                 width: 20,
              //               ),
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children:  [
              //                   const Text(
              //                     'Hillsong Evening College, UK',
              //                     style: TextStyle(
              //                       fontSize: 16,
              //                       color: Colors.black54,
              //                     ),
              //                   ),
              //                   const Text(
              //                     '2016/2017',
              //                     style: TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.black54,
              //                     ),
              //                   ),
              //                   const SizedBox(
              //                     height: 8,
              //                   ),
              //                   Text(
              //                     formattedDate,
              //                     style: const TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.black45,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //     const Padding(
              //       padding: EdgeInsets.all(10.0),
              //       child: Divider(
              //         height: 5,
              //         thickness: 3,
              //       ),
              //     ),
              //     Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 20, top: 2),
              //           child: Row(
              //             children: const [
              //               Icon(
              //                 Icons.shopping_cart,
              //                 color: Colors.teal,
              //                 size: 30,
              //               ),
              //               SizedBox(
              //                 width: 20,
              //               ),
              //               Text(
              //                 'Bought Tickets',
              //                 style: TextStyle(
              //                     color: Colors.black54, fontSize: 15),
              //               )
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 40, top: 8),
              //           child: Row(
              //             children: [
              //               const CircleAvatar(
              //                 radius: 40,
              //                 backgroundImage: NetworkImage(
              //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpDMFCYnAANPd4Va-6MvrhtxYc9XxUlGxYShAa2UkUO2KHAiidrMFjgEKlB3zoAc1qFao&usqp=CAU'),
              //               ),
              //               const SizedBox(
              //                 width: 20,
              //               ),
              //               Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children:  [
              //                   const Text(
              //                     'Hillsong Evening College, UK',
              //                     style: TextStyle(
              //                       fontSize: 16,
              //                       color: Colors.black54,
              //                     ),
              //                   ),
              //                   const Text(
              //                     '2016/2017',
              //                     style: TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.black54,
              //                     ),
              //                   ),
              //                   const SizedBox(
              //                     height: 8,
              //                   ),
              //                   Text(
              //                     formattedDate,
              //
              //                     style: const TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.black45,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}
