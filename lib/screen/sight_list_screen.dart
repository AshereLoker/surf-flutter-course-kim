import 'package:flutter/material.dart';
import 'package:places/constants/app_text_styles.dart';
import 'package:places/domain/mocks.dart';
import 'package:places/screen/sight_card.dart';

class SightLightScreen extends StatefulWidget {
  const SightLightScreen({Key? key}) : super(key: key);

  @override
  State<SightLightScreen> createState() => _SightLightScreenState();
}

class _SightLightScreenState extends State<SightLightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40 + 36 * 2,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Список \nинтересных мест',
          style: AppTextStyles().largeTitle,
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
