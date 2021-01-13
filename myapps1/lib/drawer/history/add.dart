import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerTlp = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerNPM = new TextEditingController();

  void addData() {
    var url = "http://10.0.2.2/phpdasar/add_data.php";
    http.post(url, body: {
      "Nama": controllerNama.text,
      "Tlp": controllerTlp.text,
      "Email": controllerEmail.text,
      "NPM": controllerNPM.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        leading: Icon(
          Icons.person_add,
          size: 30,
        ),
        backgroundColor: Colors.red[600],
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
                  child: Text("Add Data"),
                  onPressed: () {
                    addData();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
