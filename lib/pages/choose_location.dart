import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => ChooseLocationState();
}

class ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    /////simulate network request for a user name
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoni';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vegan , musician & egg collector';
    });

    print('$username - $bio');
  }

  int counter = 0;

  @override
  void initState() {
    print('init state function run1');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is $counter')),
    );
  }
}
