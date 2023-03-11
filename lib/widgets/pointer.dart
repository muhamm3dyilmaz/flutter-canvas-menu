import 'package:flutter/material.dart';

class PointerPath extends StatelessWidget {
  const PointerPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PointerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(size.width * 0.5000000, 0);
    path1.lineTo(size.width * 0.5000000, size.height * 0.9900000);
    path1.lineTo(size.width * 0.8080000, size.height * 0.4980000);
    path1.lineTo(size.width * 0.5000000, 0);
    path1.close();

    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
