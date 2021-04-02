import 'package:flutter/material.dart';
import 'package:tindog/model/database.dart';
import 'package:tindog/model/dog.dart';

Dog dog = getRandomDog();
String imgURL = dog.imageURL;


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


            child: new Text(getRandomDog().name),

          ),
        )
    );
  }
}
