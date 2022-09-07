import 'package:flutter/cupertino.dart';

class DrawCircle extends CustomPainter {
  final Color color;
  final double value1;
  final double value2;
  final double value3;

  DrawCircle( {required this.value3,required this.value1, required this.value2, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color ;
    canvas.drawCircle( Offset(value1, value2), value3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //false : paint call might be optimized away.
    return false;
  }
}
