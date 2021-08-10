import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'descripcion_place.dart';
import 'review_list.dart';
import 'review.dart';
import 'gradient_back.dart';
import 'home_app_bar.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //descripcion palces
    final descripcionPlace = Container(
      margin: EdgeInsets.only(top: 250, left: 30, right: 30), //EdgeInsets.only
      child: DescripcionPlace("Uyuni", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    ); //container

    //review
    final review = Container(
      margin: EdgeInsets.only(top: 300, left: 30, right: 30), //EdgeInsets.only
      height: 70,
      child:  Review("assets/images/personas/persona2.jpg","Maria Elena","1 review - 4 fotos",4,"Excelente lugar para estar un rato"),
    );

    //reviewlist
    final reviewList = Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30), //EdgeInsets.only
        //height: 80,
        child: ReviewList()
    );

    //Listview
    final listview = ListView(
      children:<Widget>[
        descripcionPlace,
        reviewList
      ],
    );

    //scafold
    return Scaffold(
        /*appBar: AppBar(
          title: Text("My places"), //text
        ), */
        body: Stack(
          children: <Widget>[
            GradienBack()
          ],
        )
    );
  }
}
