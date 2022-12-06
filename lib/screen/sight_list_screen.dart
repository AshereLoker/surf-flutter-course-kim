import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/constants/app_strings.dart';
import 'package:places/constants/app_typography.dart';
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
    final List<Widget> sightPlaces =
        mocks.map((data) => SightCard(sight: data)).toList();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40 + 36 * 2,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          AppStrings.appTitle,
          style:
              AppTypography.largeTitleText32Bold.withColor(AppColors.secondary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: sightPlaces,
        ),
      ),
    );
  }
}
