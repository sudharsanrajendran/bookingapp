import 'package:flutter/material.dart';

import '../utils/Constants/Const_Colors.dart';
class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.title, this.topage});

  final String title;
  final topage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>topage));
      },
      child: Container(
        height: 80,
        width: 400,
        decoration: BoxDecoration(
          color: Tcolors.buttoncolor,
        borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(title,style: TextStyle(color:Colors.white,fontSize:20,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
