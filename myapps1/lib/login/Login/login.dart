import 'package:flutter/material.dart';
import 'package:myapps1/login/register/register.dart';

import 'package:myapps1/main.dart';
//import 'controller.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 600,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                prefixIcon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ),
                hintText: "Masukan Username",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 30,
                  color: Colors.black,
                ),
                hintText: "Masukan Password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.black,
              elevation: 10,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return Beranda();
                    }));
                  },
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: "Georgioa", color: Colors.white70),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.black,
              elevation: 10,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Register();
                    }));
                  },
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: "Georgioa", color: Colors.white70),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
