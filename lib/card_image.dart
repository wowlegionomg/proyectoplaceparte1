import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
import 'gradient_back.dart';
class CardImage extends StatelessWidget{
  String path;
  CardImage(this.path);
  @override
  Widget build(BuildContext context) {
    //cardimage
    final cardimage= Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(80),
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
            color: Colors.teal,
            blurRadius: 15,
            offset: Offset(0,10)
          )
        ]
      ),
    );
    return cardimage;
  }
}