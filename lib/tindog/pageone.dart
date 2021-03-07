import 'package:flutter/material.dart';




class Pageone extends StatefulWidget {
  @override
  _PageoneState createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: new Container(
          color: Colors.green,
          child: Center(


            child: new Text("1. Seite"),

          ),
        )
    );
  }
}
