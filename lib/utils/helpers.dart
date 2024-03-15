import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/utils/custom_styles.dart';

export './custom_styles.dart';
export './responsive_display.dart';

const String email = "tomleclercq@info.be";

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

///MediaQuery
///
/// [small] => width < 640
///
/// [medium] => width >= 641 && width <= 1007
///
/// [large]=> width > 1007
enum Breakpoint { xsmall, small, medium, large, xlarge }

enum LinkType { button, text }

Widget myTitle() {
  return InkWell(
    child: CustomStyles.getText("Tom <b>Leclercq</b>"),
    onTap: () => Home.routeTo(),
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
