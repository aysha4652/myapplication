import 'package:flutter/material.dart';
import 'package:myapplication/const/appcolor.dart';
import 'package:myapplication/navigator/addtocart.dart';
import 'package:myapplication/navigator/favorite.dart';
import 'package:myapplication/navigator/homepage.dart';
import 'package:myapplication/navigator/profile.dart';

class Homewidget extends StatefulWidget {
  const Homewidget({Key? key}) : super(key: key);

  @override
  _HomewidgetState createState() => _HomewidgetState();
}

class _HomewidgetState extends State<Homewidget> {
  @override
  var indexpage = 0;
  final page = [
    Homepage(),
    Favoritewidget(),
    Cartwidget(),
    Profilewidget(),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appcolor.mycolor,
          title: Text("E-Commerce"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (index) {
            setState(() {
              indexpage = index;
            });
          },
        ),
        body: page[indexpage],
      ),
    );
  }
}
