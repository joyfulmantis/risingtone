import 'package:flutter/material.dart';

class BottomConcaveCorners extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    double height = rect.height;
    double width = rect.width;
    var path = Path();
    path.lineTo(0, height + width * 0.1);
    path.arcToPoint(
      Offset(width * 0.1, height),
      radius: Radius.circular(width * 0.1),
    );
    path.lineTo(width * 0.9, height);
    path.arcToPoint(
      Offset(width, height + width * 0.1),
      radius: Radius.circular(width * 0.1),
    );
    path.lineTo(width, 0);
    path.close();

    return path;
  }
}

class TopConcaveCorners extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    double rectLeft = rect.left;
    double rectTop = rect.top;
    double rectBottom = rect.bottom;
    double width = rect.width;
    var path = Path();
    path.moveTo(rectLeft, rectTop - (width * 0.1));
    path.arcToPoint(Offset(width * 0.1, rectTop),
        radius: Radius.circular(width * 0.1), clockwise: false);
    path.lineTo(width * 0.9, rectTop);
    path.arcToPoint(Offset(width, rectTop - (width * 0.1)),
        radius: Radius.circular(width * 0.1), clockwise: false);
    path.lineTo(width, rectBottom);
    path.lineTo(rectLeft, rectBottom);
    path.close();

    return path;
  }
}
