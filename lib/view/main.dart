import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Colors, Column, FloatingActionButton, Icon, Icons, Key, MainAxisAlignment, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, VisualDensity, Widget, runApp;
import 'package:flutter/material.dart';
import 'package:tindog/view/pagefive.dart';
import 'package:tindog/view/pagefour.dart';
import 'package:tindog/view/pageone.dart';
import 'package:tindog/view/pagethree.dart';
import 'package:tindog/view/pagetwo.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar())

);

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();

}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final List<Widget> _children=[
    Pageone(),
    Pagetwo(),
    Pagethree(),
    Pagefour(),
    Pagefive(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _page = index;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.green,
        body: _children[_page],

        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.white,
          backgroundColor: Colors.green,
          buttonBackgroundColor: Colors.white ,
          height: 50,
          onTap: onTappedBar,
          items: <Widget>[
            Icon(Icons.verified_user,size: 20, color: Colors.black),
            Icon(Icons.add,size: 20, color: Colors.black),
            Icon(Icons.search,size: 50, color: Colors.black),
            Icon(Icons.favorite,size: 20, color: Colors.black),
            Icon(Icons.list,size: 20, color: Colors.black),
          ],

          animationDuration: Duration(
              milliseconds: 200
          ),
          index: 2,
          animationCurve: Curves.bounceInOut,


        ),

    );

  }

}



