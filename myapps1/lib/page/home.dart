import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget carouselImages = Container(
    height: 200,
    padding: EdgeInsets.all(1),
    child: new Carousel(
      boxFit: BoxFit.fill,
      images: [
        NetworkImage("https://i.ytimg.com/vi/1Woch-sLhQQ/maxresdefault.jpg"),
        NetworkImage(
            "https://jabaltour.files.wordpress.com/2016/02/karimunjawa2.jpg"),
        NetworkImage("https://i.ytimg.com/vi/A-WB63F_3OQ/maxresdefault.jpg"),
        NetworkImage("https://i.ytimg.com/vi/k-DIRLNrbZo/maxresdefault.jpg"),
        NetworkImage("https://i.ytimg.com/vi/P2SoArw6fIs/maxresdefault.jpg"),
        NetworkImage("https://i.ytimg.com/vi/w8pyBXAQjK0/maxresdefault.jpg"),
        NetworkImage(
            "https://www.hipwee.com/wp-content/uploads/2016/11/hipwee-pantai-panjang.jpg"),
      ],
      autoplay: true,
      //animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 1000),
      dotSize: 2.0,
      indicatorBgPadding: 4.0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[carouselImages],
      ),
    );
  }
}
