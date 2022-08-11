import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../model/PostApi.dart';

Future<PostApi> createAlbum(String name, String job) async {
  final response = await http.post(
    Uri.parse('https://reqres.in/api/users'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<dynamic, dynamic>{
      'name': name,
      'job': job,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return PostApi.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}





class SavePage extends StatefulWidget {
  SavePage({super.key});

  @override
  State<SavePage> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<SavePage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  Future<PostApi>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Enter Name'),
          ),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: TextField(
            controller: _controller1,
            decoration: const InputDecoration(hintText: 'Enter Job'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(_controller.text, _controller1.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<PostApi> buildFutureBuilder() {
    return FutureBuilder<PostApi>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(snapshot.data!.name.toString()),
              Text(snapshot.data!.job.toString()),
            ],
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}