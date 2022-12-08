import 'package:flutter/widgets.dart';
import 'package:styled_text/styled_text.dart';

class CustomStyles {
  static const h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const h2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid,
  );
  static const h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const body = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static TextStyle bold = body.copyWith(
    fontWeight: FontWeight.bold,
  );
  static const footer = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w200,
  );

  static Widget getText(String text) {
    return StyledText(
      text: text,
      style: CustomStyles.body,
      tags: {
        'b': StyledTextTag(style: CustomStyles.bold),
      },
    );
  }
}
