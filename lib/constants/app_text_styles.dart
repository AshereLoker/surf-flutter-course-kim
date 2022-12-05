import 'package:flutter/cupertino.dart';
import 'package:places/constants/app_colors.dart';

const String _baseFont = 'Roboto';
const FontWeight _regular = FontWeight.w400;
const FontWeight _medium = FontWeight.w500;
const FontWeight _bold = FontWeight.w700;

extension TextStyleExt on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle get withBold => copyWith(fontWeight: _bold);
  TextStyle get withMedium => copyWith(fontWeight: _medium);
  TextStyle get withRegular => copyWith(fontWeight: _regular);
}

class AppTextStyles extends TextStyle {
  TextStyle get title => const TextStyle(
        color: AppColors.secondary,
        fontFamily: _baseFont,
        fontWeight: _bold,
        fontSize: 24,
        height: 29 / 24,
      );

  TextStyle get largeTitle => const TextStyle(
        color: AppColors.secondary,
        fontFamily: _baseFont,
        fontWeight: _bold,
        fontSize: 32,
        height: 36 / 32,
      );

  TextStyle get small => const TextStyle(
        fontFamily: _baseFont,
        fontWeight: _regular,
        fontSize: 14,
        height: 18 / 14,
      );

  TextStyle get text => const TextStyle(
        fontFamily: _baseFont,
        fontWeight: _medium,
        fontSize: 16,
        height: 20 / 16,
      );

  TextStyle get button => const TextStyle(
        fontFamily: _baseFont,
        fontWeight: _bold,
        fontSize: 14,
        height: 18 / 14,
      );
}
