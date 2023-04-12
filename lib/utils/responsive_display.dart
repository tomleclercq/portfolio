import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/utils/helpers.dart';

class ResponsiveDisplay {
  BuildContext context;

  ResponsiveDisplay(this.context);
  static double xS = 380;
  static double s = 400;
  static double m = 640;
  static double l = 1008;
  static double xL = 1440;

  bool get isMobile {
   return   kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);
  }

  Breakpoint get breakpoint {
    if (isXLarge(context)) {
      return Breakpoint.xlarge;
    } else if (isLarge(context)) {
      return Breakpoint.large;
    } else if (isMedium(context)) {
      return Breakpoint.medium;
    } else if (isSmall(context)) {
      return Breakpoint.small;
    } else {
      return Breakpoint.xsmall;
    }
  }

  double get x => MediaQuery.of(context).size.width;
  double get y => MediaQuery.of(context).size.height;

  static getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  /// Small => width < 400
  static bool isXSmall(BuildContext context) {
    return getWidth(context) <= xS;
  }

  /// Small => width < 640
  static bool isSmall(BuildContext context) {
    final width = getWidth(context);
    return width >= (xS + 1) && width <= s;
  }

  /// Medium => width >= 641 && width <= 1007
  static bool isMedium(BuildContext context) {
    final width = getWidth(context);
    return width >= (s + 1) && width <= m;
  }

  /// Large=> width > 1007
  static bool isLarge(BuildContext context) {
    final width = getWidth(context);
    return getWidth(context) > (m + 1) && width < xL;
  }

  /// XLarge=> width > 1440
  static bool isXLarge(BuildContext context) {
    return getWidth(context) >= xL;
  }
}
