import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'descripcion_place.dart';


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //descripcion palces
    final descripcionPlace = Container(
      margin: EdgeInsets.only(top: 250, left: 30, right: 30), //EdgeInsets.only
      child: DescripcionPlace("Uyuni", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    ); //container

    //review

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
