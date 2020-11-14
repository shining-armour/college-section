import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collegesection/Money/summary.dart';

import 'borrow.dart';
import 'package:flutter/material.dart';

import 'lend.dart';

class MoneyMatters extends StatefulWidget {
  final String uid;

  MoneyMatters(this.uid);

  @override
  _MoneyMattersState createState() => _MoneyMattersState();
}

class _MoneyMattersState extends State<MoneyMatters> {
  List<String> categories = ["Lend", "Summary", "Borrow"];
  int selectedIndex = 0;
  Future getPosts() async{
    var firestore =FirebaseFirestore.instance;
    QuerySnapshot qn= await firestore.collection("users").get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
      ),
      body: PageView(
        pageSnapping: true,
        children: [
          Lend(widget.uid),
          Summary(),
          Borrow()
        ],
      )
    );
  }

}
