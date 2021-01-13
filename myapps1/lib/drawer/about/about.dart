import 'package:flutter/material.dart';
import 'controller.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends AboutController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(
              "Klik Go Apps",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(""),
            Text(""),
            Text(""),
            Text(
              "Ini Aplikasi Pertama saya",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 17,
              ),
            ),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "",
                style: TextStyle(
                  fontFamily: "Georgia",
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              child: Text(
                "CopyRight@TONY NURDIANTO_17111317",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.indigo[900]),
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
}
