import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'package:proyectplaces1/home.dart';
import 'package:proyectplaces1/profile_places.dart';
import 'package:proyectplaces1/search_places.dart';
class Places extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Places();
  }
}
class _Places extends State<Places> {
  int currentIndex=0;
  List<Widget> pantallas =<Widget>[
    MyHome(),
    SearchPlaces(),
    ProfilePlaces()
  ];
  void cambiarPantalla(int index){
    //setstate() actualizar widget
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final scafold= Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Color(0XFF574ACF)
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0XFF574ACF),
                ),
                title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color(0XFF574ACF),
              ),
              title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0XFF574ACF),
                ),
                title: Text("")
            ),
          ],
          onTap: cambiarPantalla,
        ),
      ),
      body: pantallas[currentIndex],
    );
    return scafold;
  }
}