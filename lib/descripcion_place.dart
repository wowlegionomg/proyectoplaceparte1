import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';

class DescripcionPlace extends StatelessWidget {
  String textoTitulo;
  int cantidadEstrellas;
  String textoDescripcion;
  //CONTRUCTOR
  DescripcionPlace(this.textoTitulo, this.cantidadEstrellas, this.textoDescripcion);
  @override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(right: 20), //edgeinsetsonly
      child: Text(
        textoTitulo,
        style: GoogleFonts.lato(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          //fontStyle: FontStyle.italic,
        ),
        //style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), //textstyle
      ), //text
    ); //container
    //estrella
    final estrella = Container(
      margin: EdgeInsets.only(right: 5), //edgeinsetsonly
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ), //icon
    ); //container
    //estrellaborde
    final estrellaBorde = Container(
      margin: EdgeInsets.only(right: 5), //edgeinsetsonly
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ), //icon
    ); //container
    //fila esrrellas
    List<Container> estrellas = new List();
    for (int i = 0; i < 5; i++) {
      if (i < cantidadEstrellas) {
        estrellas.add(estrella);
      } else {
        estrellas.add(estrellaBorde);
      }
    }
    final filaestrellas = Row(
      children: estrellas,
    ); //row

    final filatitulo = Row(
      children: <Widget>[
        titulo,
        filaestrellas
      ], //widget[]
    ); //row
    final descripcion = Container(
      margin: EdgeInsets.only(top: 10), //edgeinsetsonly
      child: Text(
        textoDescripcion,
        style: GoogleFonts.lato(
            color: Colors.black54
        ),
        //style: TextStyle(color: Colors.black54), //textstyle
      ), //text
    ); //container
    final descripcionPlace = Column(
      children: <Widget>[
        filatitulo,
        descripcion
      ], //widget
    ); //column
    return descripcionPlace;
  }
}
