import 'package:flutter/material.dart';

const title = "Tom Leclercq";

class AppColors {
  static const int _greyPrimayValue = 0xFF4E4E4E;
  static const grey = MaterialColor(
    _greyPrimayValue,
    {
      200: Color(0xFF404040),
      500: Color(_greyPrimayValue),
      800: Color(0xFFAEAEAE),
    },
  );
}

enum Breakpoint { small, medium, large }

enum LinkType { button, text }

class ResponsiveDisplay {
  BuildContext context;
  ResponsiveDisplay(this.context);

  Breakpoint get size {
    final width = MediaQuery.of(context).size.width;
    if (isMedium(width)) {
      return Breakpoint.medium;
    } else if (isSmall(width)) {
      return Breakpoint.small;
    } else {
      return Breakpoint.large;
    }
  }

  static bool isSmall(double width) => width < 640;
  static bool isMedium(double width) => width >= 641 && width <= 1007;
  static bool isLarge(double width) => width > 1007;
}
