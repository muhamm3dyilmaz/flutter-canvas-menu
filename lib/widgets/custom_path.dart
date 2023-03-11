import 'package:flutter/material.dart';

class CustomPath extends StatelessWidget {
  const CustomPath({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 753,
      child: ClipPath(
        clipper: MyClipper(),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(size.width, size.height * 0.0116202, size.width,
        size.height * 0.0473572);
    path0.cubicTo(
        size.width * 0.9550000,
        size.height * 0.0800000,
        size.width * 0.1095000,
        size.height * 0.0835989,
        size.width * 0.1000000,
        size.height * 0.1195219);
    path0.quadraticBezierTo(size.width * 0.1000000, size.height * 0.2055113,
        size.width * 0.1000000, size.height * 0.4634794);
    path0.quadraticBezierTo(size.width * 0.1000000, size.height * 0.5640770,
        size.width * 0.1000000, size.height * 0.5976096);
    path0.cubicTo(
        size.width * 0.1055000,
        size.height * 0.6373174,
        size.width * 0.9505000,
        size.height * 0.6317397,
        size.width,
        size.height * 0.6640106);
    path0.quadraticBezierTo(size.width * 1.0060000, size.height * 0.7490704,
        size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, size.height * 0.0504648);
    path0.lineTo(0, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
