import 'package:collegesection/models/event.dart';
import 'package:collegesection/services/eventdatabase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventDisplay extends StatelessWidget {
  final String eid, uid;

  EventDisplay({this.eid, this.uid});
  EventDetails details;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder<EventDetails>(
        stream: EventDatabaseService(uid: uid).getEventDetails(eid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            details = snapshot.data;
            return Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image.network(details.posterUrl),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(),
            );
          }
        });
  }
}
