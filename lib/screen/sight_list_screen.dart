import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/screen/sight_card.dart';

class SightLightScreen extends StatefulWidget {
  const SightLightScreen({Key? key}) : super(key: key);

  @override
  State<SightLightScreen> createState() => _SightLightScreenState();
}

class _SightLightScreenState extends State<SightLightScreen> {
  static const TextStyle titleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 32,
    height: 36 / 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40 + 36 * 2,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Список \nинтересных мест',
          style: titleStyle.copyWith(color: AppColors.secondary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            for (final mock in mocks) ...[
              SightCard(sight: mock),
            ],
          ],
        ),
      ),
    );
  }
}
