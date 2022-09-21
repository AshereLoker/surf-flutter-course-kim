import 'package:flutter/material.dart';

class SightLightScreen extends StatefulWidget {
  const SightLightScreen({Key? key}) : super(key: key);

  @override
  State<SightLightScreen> createState() => _SightLightScreenState();
}

class _SightLightScreenState extends State<SightLightScreen> {
  static const mainColor = Color(0xFF252849);
  static const secondaryColor = Color(0xFF3B3E5B);
  static const greenColor = Color(0xFF4CAF50);
  static const yellowColor = Color(0xFFFCDD3D);
  static const titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 32,
    height: 36 / 32,
  );
  final mainStyle = titleStyle.copyWith(color: mainColor);
  final secondaryStyle = titleStyle.copyWith(color: secondaryColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40 + 36 * 2,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: 'С',
            style: titleStyle.copyWith(color: greenColor),
            children: [
              TextSpan(text: 'писок', style: secondaryStyle),
              TextSpan(
                text: '\nи',
                style: titleStyle.copyWith(color: yellowColor),
              ),
              TextSpan(text: 'нтересных', style: secondaryStyle),
              TextSpan(text: ' м', style: mainStyle),
              TextSpan(text: 'ест', style: secondaryStyle),
            ],
          ),
        ),
      ),
    );
  }
}
