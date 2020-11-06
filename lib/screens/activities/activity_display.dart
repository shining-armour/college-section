import 'package:collegesection/models/Activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityDisplay extends StatelessWidget {
  final String uid;
  final ActivityDetails a;

  ActivityDisplay({this.uid, this.a});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                a.activityTitle,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(a.description),
              SizedBox(
                height: 20.0,
              ),
              a.activityType != 'Skill'
                  ? Text('Required: ' + a.noOfPlayers.toString() + 'Players')
                  : Container(),
              RaisedButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Text('Request'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
