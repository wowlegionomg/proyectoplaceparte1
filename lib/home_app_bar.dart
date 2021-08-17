import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
import 'gradient_back.dart';
class HomeAppBar extends StatelessWidget {
  String textotitulo;
  HomeAppBar(this.textotitulo);
  @override
  Widget build(BuildContext context) {
    //titulo
    final titulo = Container(
      margin: EdgeInsets.only(
        top :40,
        left: 30
      ),
      child: Text(
        textotitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white
        ),
      ),
    );
    final appBar= Stack(
      children:<Widget>[
        GradienBack(),
        titulo
      ],
    );
    return appBar;
  }
}