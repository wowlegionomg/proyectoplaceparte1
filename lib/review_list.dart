import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //review_list
    final reviewList= Column (
      children: <Widget>[
        Review("assets/images/personas/persona1.jpg","Maria Elena","1 review - 4 fotos",4,"Excelente lugar para estar un rato"),
        Review("assets/images/personas/persona2.jpg","Nayeli","1 review - 3 fotos",3,"un lugar tanto xD"),
        Review("assets/images/personas/persona3.jpg","Giovanna","9 review - 1 fotos",4,"La pase bien la verdad"),
        Review("assets/images/personas/persona4.jpg","Giovanna","3 review - 7 fotos",5,"Muy bonito"),
        Review("assets/images/personas/persona5.jpg","Fabiola","6 review - 9 fotos",4,"nice par estar un rato"),
      ], //widget []
    );
    return reviewList;
  }
}