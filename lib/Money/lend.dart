import 'package:barcode_scan/barcode_scan.dart';
import 'package:collegesection/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Lend extends StatefulWidget {
  final String uid;

  Lend(this.uid);
  @override
  _LendState createState() => _LendState();
}

class _LendState extends State<Lend> {
  @override
  Widget build(BuildContext context) {
    String qrData = widget.uid.toString();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QrImage(
              //plce where the QR Image will be shown
              data: qrData,
            ),
            SizedBox(
              height: 20.0,
            ),
            // Text(
            //   "New QR Link Generator",
            //   style: TextStyle(fontSize: 20.0),
            // ),
            // TextField(
            //   controller: qrdataFeed,
            //   decoration: InputDecoration(
            //     hintText: "Input your link or data",
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
            //   child: FlatButton(
            //     padding: EdgeInsets.all(15.0),
            //     onPressed: () async {
            //
            //       if (qrdataFeed.text.isEmpty) {        //a little validation for the textfield
            //         setState(() {
            //           qrData = "";
            //         });
            //       } else {
            //         setState(() {
            //           qrData = qrdataFeed.text;
            //         });
            //       }
            //
            //     },
            //     child: Text(
            //       "Generate QR",
            //       style: TextStyle(
            //           color: Colors.blue, fontWeight: FontWeight.bold),
            //     ),
            //     shape: RoundedRectangleBorder(
            //         side: BorderSide(color: Colors.blue, width: 3.0),
            //         borderRadius: BorderRadius.circular(20.0)),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

 // final qrdataFeed = TextEditingController();
}
