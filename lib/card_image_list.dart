import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'package:proyectplaces1/card_image.dart';
import 'review.dart';
class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // cardimagelist
    final cardImagenList= Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/lugares/lugar1.jpg"),
          CardImage("assets/images/lugares/lugar2.jpg"),
          CardImage("assets/images/lugares/lugar3.jpg"),
          CardImage("assets/images/lugares/lugar4.jpg"),
          CardImage("assets/images/lugares/lugar5.jpg"),
          CardImage("assets/images/lugares/lugar6.jpg"),
        ], 
      ),
    );
    return cardImagenList;
  }
}