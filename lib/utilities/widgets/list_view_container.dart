import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  String? name;
  String? price;
  String? id;

  ListViewContainer({Key? key, this.id, this.name, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return



      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 2),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.teal,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Joined the list',
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 8),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/03/29/04/09/shopping-icon-2184065_1280.png'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '${price.toString()} CAD',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'ID ${id.toString()}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Divider(
            height: 5,
            thickness: 3,
          ),
        ),
        // Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 20, top: 2),
        //       child: Row(
        //
        //         children: const [
        //           Icon(
        //             Icons.shopping_cart,
        //             color: Colors.teal,
        //             size: 30,
        //           ),
        //           SizedBox(width: 20,),
        //           Text(
        //             'Bought Tickets',
        //
        //             style: TextStyle(color: Colors.black54, fontSize: 15),
        //           )
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 40, top:8),
        //       child: Row(
        //         children:  [
        //           const CircleAvatar(
        //             radius: 40,
        //             backgroundImage: NetworkImage(
        //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3b8cAa81ibFtfxImfTQJXYKo0hrnemHXikg&usqp=CAU'),
        //           ),
        //           SizedBox(width: 20,),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: const [
        //               Text(
        //                name.toString(),
        //                 style: TextStyle(fontSize: 16, color: Colors.black54,),
        //               ),
        //               Text(
        //                 '2016/2017',
        //                 style: TextStyle(fontSize: 15, color: Colors.black54,),
        //               ),
        //               SizedBox(height: 8,),
        //               Text(
        //                 'Mon, 17 Oct, 16:00',
        //                 style: TextStyle(fontSize: 15, color: Colors.black45,),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
