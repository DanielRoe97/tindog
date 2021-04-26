
import 'dart:ui';

import 'package:tindog/model/dog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tindog/model/database.dart';

//Global Variablen (Bleiben gleich, hier kann man Informationen speichern)

Dog dog = getRandomDog(); //Soll ersetzt werden
String imgURL = dog.imageURL; // Soll ersetzt werden

List<Dog> dogs = getDogList(); // Soll implementiret werden

class Pagethree extends StatefulWidget {
  @override
  _PagethreeState createState() => _PagethreeState();


}

class _PagethreeState extends State<Pagethree> {


//Local Variablen

  @override
  Widget build(BuildContext context) {
    CardController controller;
    return new Scaffold(

        body: new Container(

          color: Colors.green,
             /* height: MediaQuery.of(context).size.height*0.7,*/
          child: TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 10,
            stackNum: 10,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width*0.9,
            maxHeight: MediaQuery.of(context).size.width*0.9,
            minHeight: MediaQuery.of(context).size.width*0.8,
            minWidth: MediaQuery.of(context).size.width*0.8,
            cardBuilder: (context, index) => Card(

              child: Stack(
                children: <Widget>[

                  Container(
                    child: Image.network(
                      dog.imageURL,
                      fit: BoxFit.cover,
                    ),
                    height: double.infinity, //Damit alles ausgefüllt ist
                  ),

                  Container( //Dieser Container ist nur für den Farbverlauf
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black.withOpacity(0.5),
                            ],
                            stops: [
                              0.0,
                              1.0
                            ])),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10.0),
                    height: double.infinity,
                    child: Column(

                      children:[
                        Text(
                          dog.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white70, fontSize: 30.0),
                        ),
                        Text(
                          'Rasse/Alter',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white70, fontSize: 10.0),
                        ),
                      ]

                    )
                  ),
                ],
              ),
            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align){
                if (align.x <0){
                }else if (align.x >0){}
            },
            swipeCompleteCallback: (CardSwipeOrientation orientation , int index){

          }),
        )
    );
  }
}


