
import 'package:flutter/material.dart';

class CustomShapeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ClipPath(
          clipper: CustomContainerClipper(),
          child: Container(
            height: 300,
            width: 250,
            color: Colors.white,
            child: Center(child: Text("Your Content")),
          ),
        ),
      ),
    );
  }
}

class CustomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double circleRadius = 10;
    const double rightCut = 10;

    Path path = Path();

    // Start from below the circle
    path.moveTo(0, circleRadius);

    // Left up to the cut-out
    path.arcToPoint(
      Offset(circleRadius, 2),
      radius: Radius.circular(circleRadius),
    );

    // Top line to before right cut
    path.lineTo(size.width - rightCut, 0);

    // Top-right small angled cut
    path.lineTo(size.width, rightCut);

    // Right side
    path.lineTo(size.width, size.height);

    // Bottom
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
