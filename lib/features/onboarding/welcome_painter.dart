import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class WelcomePainter extends CustomPainter {
  WelcomePainter(this.ratio);

  double ratio = 1;

  @override
  void paint(Canvas canvas, Size size) {
    final double x = size.width;
    final double y = size.height;

    final Path path = Path()
      ..moveTo(0, 0)
      ..quadraticBezierTo(x * 0.4, (y * 0.25) * ratio, x, (y * 0.275) * ratio)
      ..lineTo(x, 0)
      ..lineTo(0, 0)
      ..close();

    final Path path2 = Path()
      ..moveTo(0, 0)
      ..moveTo(0, y)
      ..lineTo(x, y)
      ..lineTo(x, y * 0.8)
      ..quadraticBezierTo(x * 0.5, (y * 0.6) / ratio, 0, (y * 0.675) / ratio)
      ..lineTo(0, y)
      ..close();

    const Color color1 = Color(0xFF713FFE);
    const Color color2 = Color(0xFF9B38FE);

    final Paint paint1 = Paint()
      ..shader = ui.Gradient.linear(Offset.zero, Offset(0, y * 0.275), [
        // Color(0xFFf17568),
        // Color(0xFFe67b6e),
        color1, color2,
      ]);

    final Paint paint2 = Paint()
      ..shader = ui.Gradient.linear(Offset(x, y), Offset(0, y * 0.675), [color2, color1]);

    canvas
      ..drawPath(path, paint1)
      ..drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
