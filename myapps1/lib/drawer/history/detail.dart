import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapps1/drawer/history/history.dart';
import 'edit.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.index, this.list});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  void deleteData() {
    var url = "http://10.0.2.2/phpdasar/hapus.php";
    http.post(url, body: {
      "Id": widget.list[widget.index]["Id"],
    });
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        "Apakah anda ingin menghapus '${widget.list[widget.index]['Nama']}'Sebagai teman anda?",
        style: TextStyle(fontFamily: "Verdana", fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        RaisedButton(
            child: new Text(
              "Ya, Hapus",
              style: TextStyle(
                fontFamily: "Arial",
              ),
            ),
            color: Colors.red[600],
            onPressed: () {
              deleteData();
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => new History()),
              );
            }),
        RaisedButton(
          child: new Text("Tidak jadi"),
          color: Colors.red[600],
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Profile",
          //"${widget.list[widget.indext]['Nama']}",
          style: TextStyle(fontSize: 18, fontFamily: "Georgia"),
        ),
        backgroundColor: Colors.indigo[800],
        leading: new Icon(Icons.person),
        leadingWidth: 50,
      ),
      body: new Container(
        height: 250,
        padding: const EdgeInsets.all(20),
        child: new Card(
          color: Colors.indigo[800],
          child: new Center(
            child: Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 16),
                ),
                new Text(
                  widget.list[widget.index]["Nama"],
                  style: new TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: "Georgia"),
                ),
                new Text(
                  "Tlp/Wa : ${widget.list[widget.index]["Tlp"]}",
                  style: new TextStyle(
                      fontSize: 18, fontFamily: "Georgia", color: Colors.white),
                ),
                new Text(
                  "E-mail : ${widget.list[widget.index]["Email"]}",
                  style: new TextStyle(
                      fontSize: 18, fontFamily: "Georgia", color: Colors.white),
                ),
                new Text(
                  "NPM : ${widget.list[widget.index]["NPM"]}",
                  style: new TextStyle(
                      fontSize: 18, fontFamily: "Georgia", color: Colors.white),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 25),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: new Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Arial",
                            color: Colors.black87),
                      ),
                      color: Colors.green[900],
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new EditData(
                            list: widget.list,
                            index: widget.index,
                          ),
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5),
                    ),
                    RaisedButton(
                      child: new Text(
                        'Delete',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Arial",
                            color: Colors.black87),
                      ),
                      color: Colors.red[900],
                      onPressed: () => confirm(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  push(MaterialPageRoute materialPageRoute) {}
}
