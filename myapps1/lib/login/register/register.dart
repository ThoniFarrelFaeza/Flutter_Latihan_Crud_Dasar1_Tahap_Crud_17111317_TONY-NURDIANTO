//import 'package:myapps1/drawer/register/controlller.dart';
import 'package:flutter/material.dart';
//import 'controlller.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<String> agama = [
    "Islam",
    "Budha",
    "kristen",
    "Katolik",
    "Hindu",
    "Batak",
  ];
  String _agama = "Islam";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerCat = new TextEditingController();

  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  String _jk = "";

  void _pilihjk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPass.text}"),
            new Text("Catatan : ${controllerCat.text}"),
            new Text("Jenis Kelamin : $_jk"),
            new Text("Agama : $_agama"),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
            ),
            new RaisedButton(
              child: new Text("Data berhasil Disimpan"),
              onPressed: () => Navigator.pop(
                context,
              ),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Register"),
        backgroundColor: Colors.blue[900],
        leading: new Icon(Icons.person_add),
      ),
      body: ListView(
        children: [
          new Container(
            padding: EdgeInsets.all(15),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: controllerPass,
                  obscureText: true,
                  decoration: new InputDecoration(
                      labelText: "Password",
                      hintText: "Masukan Password",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  maxLines: 3,
                  controller: controllerCat,
                  decoration: new InputDecoration(
                      labelText: "Catatan",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                RadioListTile(
                  value: "Pria",
                  title: new Text("Pria"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihjk(value);
                  },
                  activeColor: Colors.blue[900],
                ),
                RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value) {
                    _pilihjk(value);
                  },
                  activeColor: Colors.blue[900],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "Agama",
                      style: new TextStyle(fontSize: 15.0, color: Colors.blue),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(right: 20.0),
                    ),
                    new DropdownButton(
                        onChanged: (value) {
                          pilihAgama(value);
                        },
                        value: _agama,
                        items: agama.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList()),
                  ],
                ),
                new RaisedButton(
                  child: new Text("Save"),
                  color: Colors.red,
                  onPressed: () {
                    kirimdata();
                  },
                ),
                RaisedButton(
                  child: Text("Kembali"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
