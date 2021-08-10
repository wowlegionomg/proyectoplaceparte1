import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';
import 'gradient_back.dart';
class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar= Stack(
      children:<Widget>[
        GradienBack()
      ],
    );
    return appBar;
  }
}