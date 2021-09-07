import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
import 'gradient_back.dart';
import 'fab_green.dart';
class CardImage extends StatelessWidget{
  String path;
  CardImage(this.path);
  @override
  Widget build(BuildContext context) {
    //cardimage
    final card= Padding(
      //height: 200,
      padding: EdgeInsets.only(
        top: 100,
        right: 15,
        bottom:20,
      ),
      child: Container(
        width: 200,
        //margin: EdgeInsets.all(80),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  path,
                ),
                fit: BoxFit.cover
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 15,
                  offset: Offset(0,10)
              )
            ]
        ),
      ),
    );

    //stack
    final cardImage=Stack(
      alignment: Alignment(0.7, 0.95),
      children: <Widget>[
        card,
        FabGreen()
      ],
    );
    return cardImage;
  }
}