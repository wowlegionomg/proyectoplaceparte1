import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  String pathfoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;
  //metodo constructor
  Review(this.pathfoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.textoComentario);

  @override
  Widget build(BuildContext context) {
    //foto
    final foto = Container(
      margin: EdgeInsets.only(right: 10), //edgeinsetsonly
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(pathfoto), //assetimage
              fit: BoxFit.cover) //decorationimage
      ), //boxdecoration
    ); //container

    //nombre usuario
    final nombreUsuario = Container(
      child: Text(
        textoNombreUsuario,
        style: GoogleFonts.lato(
          color: Colors.black54,
          fontSize: 20,
          //fontWeight: FontWeight.bold,
          //fontStyle: FontStyle.italic,
        ), //style
      ), //text
    );

    //resumen usuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(right: 5), //edgeinsetsonly
      child: Text(
        textoResumenUsuario,
        style: GoogleFonts.lato(
          color: Colors.black54,
          //fontWeight: FontWeight.bold,
          //fontStyle: FontStyle.italic,
        ), //style
      ), //text
    );

    //estrella
    final estrella = Container(
      margin: EdgeInsets.only(right: 5), //edgeinsetsonly
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 16,
      ), //icon
    ); //container

    //estrellaborde
    final estrellaBorde = Container(
      margin: EdgeInsets.only(right: 5), //edgeinsetsonly
      child: Icon(
        Icons.star_border,
        size: 16,
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

    //filaestrellas
    final filaestrellas = Row(
      children: estrellas,
    ); //row

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaestrellas
      ], //widget []
    );

    //comentario
    final comentario = Container(
      child: Text(
        textoComentario,
        style: GoogleFonts.lato(
          color: Colors.black54,
        ), //style
      ), //text
    ); //container

    //columna review
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        comentario
      ], //widget[]
    );

    //review
    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ], //widget[]
    ); //row

    return review;
  }
}
