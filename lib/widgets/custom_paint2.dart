import 'package:flutter/cupertino.dart';

class DrawCircles extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color(0XFFF7E3FE);
    canvas.drawCircle(const Offset(25, 20.0), 310, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //false : paint call might be optimized away.
    return false;
  }
}
