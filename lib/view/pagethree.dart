
import 'dart:ui';
import 'package:tindog/model/dog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tindog/model/database.dart';
import 'package:tindog/view/dog.dart';

Dog dog = getRandomDog();
String imgURL = dog.imageURL;
String name = dog.name;



class Pagethree extends StatefulWidget {
  @override
  _PagethreeState createState() => _PagethreeState();


}

class _PagethreeState extends State<Pagethree> {



  List<String>  _getDoge = [
  ];
  @override
  Widget build(BuildContext context) {
    CardController controller;
    return new Scaffold(

        body: new Container(

          color: Colors.green,
             /* height: MediaQuery.of(context).size.height*0.7,*/
          child: TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 6,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width*0.9,
            maxHeight: MediaQuery.of(context).size.width*0.9,
            minHeight: MediaQuery.of(context).size.width*0.8,
            minWidth: MediaQuery.of(context).size.width*0.8,

            cardBuilder: (context, index) => Card(

              child: Image.network(dog.imageURL, fit: BoxFit.cover ),

            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align){
                if (align.x <0){
                }else if (align.x >0){}
            },
            swipeCompleteCallback: (CardSwipeOrientation orientation , int index){}


          ),

        )

    );
  }

}
Widget buildUserInfo({@required name}) => Padding(
  padding: const EdgeInsets.all(8),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        '${dog.name}',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      )
    ],
  ),
);
