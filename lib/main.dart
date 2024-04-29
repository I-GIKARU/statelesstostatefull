import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyappCard(),
    ));

// ignore: use_key_in_widget_constructors
class MyappCard extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyappCardState createState() => _MyappCardState();
}

class _MyappCardState extends State<MyappCard> {

int myappplevel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('MyappCard'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
            myappplevel += 20;

            });
          },
          backgroundColor: Colors.red[600],
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/login.png'),
                  radius: 100.0,
                ),
              ),
              const Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              const Text(
                'NAME1',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'NAME2',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'CURRENT',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$myappplevel',
                style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Row(children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'name@gmail.com',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
