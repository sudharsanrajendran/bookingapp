import 'package:bookingapp/utils/Constants/Const_Colors.dart';
import 'package:flutter/material.dart';
class headers extends StatelessWidget {
  const headers({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Text(title,style: TextStyle(
        fontSize: 20,color: Tcolors.AppbartitleColor,fontWeight: FontWeight.bold
      ),),
    );
  }
}
