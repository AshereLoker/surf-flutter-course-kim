import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/constants/app_text_styles.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/main.dart';

const double _commonPadding = 16;

class SightDetails extends StatelessWidget {
  static const double _buttonRadius = 12;
  static const double _backButtonSize = 32;
  static const double _buttonIconGap = 10;
  static const double _buttonHeight = 48;
  static const double _imageHeight = 390;
  static const double _textGap = 2;
  static const double _verticalPadding = 24;
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
  static const Map<String, String> _buttonNames = <String, String>{
    'setPlaned': 'Запланировать',
    'toFavorite': 'В Избранное',
    'buildRoute': 'Построить маршрут',
  };

  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyles();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: _imageHeight,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(_commonPadding),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: _gradientColors,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _backButtonSize,
                    width: _backButtonSize,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(_buttonRadius),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: _commonPadding,
                vertical: _verticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mocks[0].name,
                    style: textStyle.title,
                  ),
                  const SizedBox(height: _textGap),
                  Row(
                    children: [
                      Text(
                        mocks[0].type,
                        style: textStyle.small.withBold.withColor(
                          AppColors.secondary,
                        ),
                      ),
                      const SizedBox(width: _commonPadding),
                      Text(
                        'закрыто до 07:20',
                        style: textStyle.small.withColor(AppColors.secondary2),
                      ),
                    ],
                  ),
                  const _CommonVerticalSpacer(),
                  Text(
                    mocks[0].details,
                    style: textStyle.small.withColor(AppColors.secondary),
                  ),
                  const _CommonVerticalSpacer(),
                  Container(
                    height: _buttonHeight,
                    decoration: const BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(_buttonRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const _IconStopper(),
                        const SizedBox(width: _buttonIconGap),
                        Text(
                          _buttonNames['buildRoute']!.toUpperCase(),
                          style: textStyle.button.withColor(AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  const _CommonVerticalSpacer(),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _BottomButton(
                        buttonColor: AppColors.secondary2.withOpacity(0.56),
                        buttonText: _buttonNames['setPlaned']!,
                      ),
                      _BottomButton(
                        buttonColor: AppColors.secondary,
                        buttonText: _buttonNames['toFavorite']!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  static const double _horizontalPadding = 8;
  static const double _iconGap = 6;

  final Color buttonColor;
  final String buttonText;

  const _BottomButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
        vertical: _commonPadding,
      ),
      child: Row(
        children: [
          _IconStopper(
            iconColor: buttonColor,
          ),
          const SizedBox(width: _iconGap),
          Text(
            buttonText,
            style: AppTextStyles().small.withColor(buttonColor),
          ),
        ],
      ),
    );
  }
}

class _CommonVerticalSpacer extends StatelessWidget {
  static const double _spacerGap = 24;

  const _CommonVerticalSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: _spacerGap);
  }
}

class _IconStopper extends StatelessWidget {
  static const double _iconSize = 24;
  static const double _iconRadius = 6;

  final Color? iconColor;

  const _IconStopper({
    Key? key,
    this.iconColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _iconSize,
      width: _iconSize,
      decoration: BoxDecoration(
        color: iconColor,
        borderRadius: const BorderRadius.all(Radius.circular(_iconRadius)),
      ),
    );
  }
}
