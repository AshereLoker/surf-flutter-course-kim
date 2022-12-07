import 'package:flutter/cupertino.dart';

extension TextStyleExt on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}

class AppTypography {
  static const textText16Medium = TextStyle(
    fontFamily: _baseFont,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w500,
  );

  static const titleText24Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 24,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  static const largeTitleText32Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 32,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  static const smallText14Regular = TextStyle(
    fontFamily: _baseFont,
    fontSize: 14,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );

  static const smallText14Bold = TextStyle(
    fontFamily: _baseFont,
    fontSize: 14,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  static const String _baseFont = 'Roboto';
}
