import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myapps1/login/Login/login.dart';
import 'package:myapps1/page/Kategori.dart';
import 'package:myapps1/page/home.dart';
import 'package:myapps1/page/profile.dart';
import 'drawer/about/about.dart';
//import 'drawer/login/login.dart';
import 'drawer/history/history.dart';
//import 'drawer/register/register.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    routes: {
      //'/login': (BuildContext _) => Login(),
      //'/register': (BuildContext _) => Register(),
      '/about': (BuildContext _) => About(),
      '/history': (BuildContext _) => History(),
    },
    initialRoute: '/',
  ));
}

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _halindex = 0;
//Memangil Halaman//

  final Home _home = Home();
  final Kategori _kategori = new Kategori();
  final Profile _profile = new Profile();

  Widget _tampilkanHal = new Home();
  // ignore: missing_return
  Widget _pilihHal(int hal) {
    switch (hal) {
      case 0:
        return _home;
        break;
      case 1:
        return _kategori;
        break;
      case 2:
        return _profile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Klik Go'),
        backgroundColor: Colors.indigo[800],
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Tony Nurdianto'),
              accountEmail: Text('Tonit686@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.indigo[800],
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.indigo[800]),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () => Navigator.of(context).pushNamed('/login'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              title: Text('Galery'),
              onTap: () => Navigator.of(context).pushNamed('/galery'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.file_present,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              title: Text('History'),
              onTap: () => Navigator.of(context).pushNamed('/history'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.history,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/about'),
              title: Text('About'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.info_outline,
                  size: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.black87,
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[_tampilkanHal],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.border_all,
            color: Colors.white,
          ),
          Icon(
            Icons.event_available,
            color: Colors.white,
          ),
        ],
        color: Colors.indigo[900],
        backgroundColor: Colors.transparent,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        index: _halindex,
        onTap: (int tekan) {
          setState(() {
            _tampilkanHal = _pilihHal(tekan);
          });
        },
      ),
    );
  }
}
