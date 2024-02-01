import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    PathElement firstEdge = PathElement(
      Offset(0, size.height - 20),
      Offset(30, size.height - 20),
      path,
    );
    firstEdge.quadraticBezierTo();

    PathElement horizontalLine = PathElement(
      Offset(0, size.height - 20),
      Offset(size.width - 30, size.height - 20),
      path,
    );
    horizontalLine.quadraticBezierTo();

    PathElement lastEdge = PathElement(
      Offset(size.width, size.height - 20),
      Offset(size.width, size.height),
      path,
    );
    lastEdge.quadraticBezierTo();

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class PathElement {
  PathElement(this.curveBeginning, this.curveEnding, this.path);

  final Offset curveBeginning;
  final Offset curveEnding;
  final Path path;

  void quadraticBezierTo() {
    path.quadraticBezierTo(
      curveBeginning.dx,
      curveBeginning.dy,
      curveEnding.dx,
      curveEnding.dy,
    );
  }
}
