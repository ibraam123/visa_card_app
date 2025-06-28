import 'package:flutter/material.dart';


class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xfff2b4a3)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(size.width * 0.6, 0);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
