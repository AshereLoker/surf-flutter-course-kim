import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  static const double _cornerRadius = 12;
  static const double _iconSize = 20;
  static const double _innerPaddings = 16;
  static const double _infoTextSpace = 2;
  static const double _imageHeight = 96;
  static const double _minHeight = 152;
  static const List<Color> _gradientColors = <Color>[
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color(0xffffb56b),
  ];

  static const TextStyle _titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 20 / 16,
    color: AppColors.secondary,
  );
  static const TextStyle _detailsStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 18 / 14,
    color: AppColors.secondary2,
  );
  static const TextStyle _typeStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    height: 18 / 14,
    color: AppColors.white,
  );

  final Sight sight;

  double get cornerRadius => _cornerRadius;
  double get iconSize => _iconSize;
  double get innerPaddings => _innerPaddings;
  double get infoTextSpace => _infoTextSpace;
  double get imageHeight => _imageHeight;
  double get minHeight => _minHeight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: _minHeight),
      margin: const EdgeInsets.only(top: _innerPaddings),
      child: Column(
        children: [
          Container(
            height: _imageHeight,
            padding: const EdgeInsets.all(_innerPaddings),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: _gradientColors,
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(_cornerRadius),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sight.type.toLowerCase(), style: _typeStyle),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.all(Radius.circular(_cornerRadius)),
                  ),
                  height: _iconSize,
                  width: _iconSize,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(_innerPaddings),
            decoration: const BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(_cornerRadius),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sight.name, style: _titleStyle),
                const SizedBox(height: _infoTextSpace),
                Text(sight.details, style: _detailsStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
