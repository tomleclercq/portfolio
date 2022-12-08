import 'package:flutter/widgets.dart';
import 'package:portfolio/utils/helpers.dart';

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

  double get x => MediaQuery.of(context).size.width;
  double get y => MediaQuery.of(context).size.height;

  static bool isSmall(double width) => width < 640;
  static bool isMedium(double width) => width >= 641 && width <= 1007;
  static bool isLarge(double width) => width > 1007;
}
