import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapps1/drawer/history/history.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;
  EditData({this.list, this.index});
  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController controllerNama;
  TextEditingController controllerTlp;
  TextEditingController controllerEmail;
  TextEditingController controllerNPM;
  void editData() {
    var url = "http://10.0.2.2/phpdasar/edit_menu.php";
    http.post(url, body: {
      "Id": widget.list[widget.index]["Id"],
      "Nama": controllerNama.text,
      "Tlp": controllerTlp.text,
      "Email": controllerEmail.text,
      "NPM": controllerNPM.text
    });
  }

  @override
  void initState() {
    controllerNama =
        new TextEditingController(text: widget.list[widget.index]['Nama']);
    controllerTlp =
        new TextEditingController(text: widget.list[widget.index]['Tlp']);
    controllerEmail =
        new TextEditingController(text: widget.list[widget.index]['Email']);
    controllerNPM =
        new TextEditingController(text: widget.list[widget.index]['NPM']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                    hintText: ("Masukan Nama"),
                    labelText: ("Masukan Nama"),
                  ),
                ),
                TextField(
                  controller: controllerTlp,
                  decoration: InputDecoration(
                    hintText: ("Masukan No.Tlp/Wa"),
                    labelText: ("Masukan No.Tlp/Wa"),
                  ),
                ),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: ("Masukan E-Mail"),
                    labelText: ("Masukan E-Mail"),
                  ),
                ),
                TextField(
                  controller: controllerNPM,
                  decoration: InputDecoration(
                    hintText: ("Masukan NPM"),
                    labelText: ("Masukan NPM"),
                  ),
                ),
                new Padding(padding: const EdgeInsets.all(5.0)),
                new RaisedButton(
                  child: Text("Edit"),
                  onPressed: () {
                    editData();
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return History();
                      },
                    ));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
