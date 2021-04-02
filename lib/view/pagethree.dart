import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';




class Pagethree extends StatefulWidget {
  @override
  _PagethreeState createState() => _PagethreeState();


}

class _PagethreeState extends State<Pagethree> {

  List<String>  platzhalter = [

  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: new Container(
          color: Colors.green,
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
              child: Image.asset('${platzhalter[index]}'),

            ),
            

          ),
        )
    );
  }
}
