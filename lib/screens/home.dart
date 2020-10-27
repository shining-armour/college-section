import 'package:collegesection/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collegesection/screens/events/events_home.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  List<Widget> _list = [
    Container(
      width: 250,
      child: Text('Growth+'),
      color: Colors.lightGreenAccent,
    ),
    Container(
      width: 250,
      child: Text('Money Matters'),
      color: Colors.amberAccent,
    ),
    Container(
      width: 250,
      child: Text('Growth+'),
      color: Colors.lightGreenAccent,
    ),
    Container(
      width: 250,
      child: Text('Money Matters'),
      color: Colors.amberAccent,
    ),
    Container(
      width: 250,
      child: Text('Growth+'),
      color: Colors.lightGreenAccent,
    ),
    Container(
      width: 250,
      child: Text('Money Matters'),
      color: Colors.amberAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserDetails>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Events(user.uid)),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text('Events'),
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height / 6,
                        child: Text('Activities'),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height / 6,
                        child: Text('Growth+'),
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height / 6,
                        child: Text('Money Matters'),
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _list[index],
                    );
                  },
                  itemCount: _list.length)),
        ],
      ),
    );
  }
}
