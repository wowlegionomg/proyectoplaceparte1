import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
class GradienBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //gradiente
    final gradiente = Container(
      height:250,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xFF4268D3),
                Color(0XFF574ACF)
              ],
              begin: FractionalOffset(0.0,0.0),
              end: FractionalOffset(1.0,1.0),
              stops:[0.4,0.6],
              tileMode: TileMode.clamp
          )

      ),
    );
    return gradiente;
  }
}