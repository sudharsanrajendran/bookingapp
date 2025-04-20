import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/homescreen/Homepage.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(textTheme:GoogleFonts.interTextTheme(), ),
    home: Homepage(),
  ));
}