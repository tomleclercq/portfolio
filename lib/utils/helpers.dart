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
