import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/Constants/Const_Colors.dart';

class Listile extends StatelessWidget {
  const Listile({super.key, required this.title, required this.subtitle});
  final  String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(image: AssetImage('images/ic_place.png')),
          title: Text(title),
          subtitle:Text(subtitle,style:TextStyle(color: Tcolors.subtitlecolor),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Divider(),
        )
      ],
    );
  }
}