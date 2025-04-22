import 'package:bookingapp/pages/Arrivingscreen/CustomClipper/Clippercontainer.dart';
import 'package:bookingapp/pages/RideOption/Rideoption.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart'; // ✅ Import Sizer

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(),
          ),
          home: CustomShapeContainer()
        );
      },
    ),
  );
}
