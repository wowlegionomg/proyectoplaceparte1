import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'descripcion_place.dart';
import 'review.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //descripcion palces
    final descripcionPlace = Container(
      margin: EdgeInsets.only(top: 250, left: 30, right: 30), //EdgeInsets.only
  }

    //review
    final review = Container(
      margin: EdgeInsets.only(top: 300, left: 30, right: 30), //EdgeInsets.only
      height: 70,
    ); //container

    //scafold
    return Scaffold(
        appBar: AppBar(
          title: Text("My places"), //text
        ), //appbar
        body: Stack(
          children: <Widget>[
            review
          ], //widget
        ) //stack
    ); //scafold
  }
}