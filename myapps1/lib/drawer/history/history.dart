import 'package:flutter/material.dart';
import 'dart:convert';
import 'controller.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'detail.dart';
import 'add.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends HistoryController {
  Future<List> getData() async {
    final response = await http.get("http://10.0.2.2/phpdasar/get_data.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'History',
          ),
          backgroundColor: Colors.indigo[800],
        ),
        floatingActionButton: FloatingActionButton(
          child: new Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new AddData(),
          )),
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          child: FutureBuilder<List>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? new ItemList(
                      list: snapshot.data,
                    )
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            },
          ),
        ));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.all(2),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // ignore: non_constant_identifier_names
                builder: (BuildContextcontext) => new Detail(
                      list: list,
                      index: i,
                    ))),
            child: Card(
              color: Colors.indigo[800],
              child: new ListTile(
                title: new Text(
                  list[i]["Nama"],
                  style: TextStyle(color: Colors.white),
                ),
                leading: new Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60,
                ),
                subtitle: new Text(
                  list[i]["NPM"],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
