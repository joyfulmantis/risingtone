import 'package:flutter/material.dart';

class AppSwatch {
  static const MaterialColor kToDark = MaterialColor(
    0xffF0B67F, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffD8A472), //10%
      100: Color(0xffC09266), //20%
      200: Color(0xffA87F59), //30%
      300: Color(0xff906D4C), //40%
      400: Color(0xff785B40), //50%
      500: Color(0xff604933), //60%
      600: Color(0xff483726), //70%
      700: Color(0xff302419), //80%
      800: Color(0xff18120D), //90%
      900: Color(0xff000000), //100%
    },
  );
}
