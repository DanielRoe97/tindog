import 'package:flutter/material.dart';




class Pagetwo extends StatefulWidget {
  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: new Container(
          color: Colors.green,
          child: Center(


            child: new Text("2. Seite"),

          ),
        )
    );
  }
}
