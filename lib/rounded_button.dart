import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
class RoundedButton extends StatelessWidget{
  String textoBoton;
  RoundedButton(this.textoBoton);
  @override
  Widget build(BuildContext context) {
    //boton
    final roudedButton= InkWell(
      child: Container(
        height: 50,
        width: 160,
        margin: EdgeInsets.only(
          top: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0XFF574ACF)
              ],
            begin: FractionalOffset(0.0,0.5),
            end: FractionalOffset(1.0,0.5),
          )
        ),

        child: Center(
          child: Text(
            textoBoton,
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
      ),
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Navegando..."),
          )
        );
      },
    );
    return roudedButton;
  }

}