import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response response =
  //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);
  // }
  void getTime() async {
    // make the request
    Response response = await get(
        Uri.parse('http://ww25.worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(datetime);
    // print(offset);
    ///create date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  // ignore: must_call_super
  void initState() {
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading'),
    );
  }
}
