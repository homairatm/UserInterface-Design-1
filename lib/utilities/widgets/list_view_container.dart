import 'package:flutter/material.dart';
class ListViewContainer extends StatelessWidget {
  const ListViewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
