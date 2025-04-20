import 'package:flutter/material.dart';

import '../../../utils/Constants/Const_Colors.dart';
import '../../SelectAddress/SelectAddresspage.dart';
class CustomdraggableScroller extends StatelessWidget {
  const CustomdraggableScroller({
    super.key, this.child, this.initialsize, this.minchildsize, this.maxchildsize,
  });
final child;
final initialsize;
final minchildsize;
final maxchildsize;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: initialsize,
      minChildSize: minchildsize,
      maxChildSize: maxchildsize,
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            color: Tcolors.draggbalescrollcolor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 8,
                  offset: Offset(1, 4),
                ),
              ]
          ),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Selectaddresspage()),
                    );
                  },
                  child: child
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}