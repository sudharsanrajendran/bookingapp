import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customAddressInput() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image(image: AssetImage('images/ic_route.png'))
            ),
            const SizedBox(width: 10),

            Expanded(
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "24, Ocean avenue",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  Divider(),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "24, Ocean avenue",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),



      ],
    ),
  );
}