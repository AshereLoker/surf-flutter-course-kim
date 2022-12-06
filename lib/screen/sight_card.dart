import 'package:flutter/material.dart';
import 'package:places/constants/app_colors.dart';
import 'package:places/constants/app_sizes.dart';
import 'package:places/constants/app_typography.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: AppSizes.heightMinCard),
      margin: const EdgeInsets.only(top: AppSizes.commonPadding),
      child: Column(
        children: [
          Container(
            height: AppSizes.heightImageCard,
            padding: const EdgeInsets.all(AppSizes.commonPadding),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.pictureGradient,
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppSizes.commonRadius),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.type.toLowerCase(),
                  style:
                      AppTypography.smallText14Bold.withColor(AppColors.white),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSizes.radiusIcon),
                    ),
                  ),
                  height: AppSizes.sizeIcon,
                  width: AppSizes.sizeIcon,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppSizes.commonPadding),
            decoration: const BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppSizes.commonRadius),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  style: AppTypography.textText16Medium
                      .withColor(AppColors.secondary),
                ),
                AppSizes.sizedBoxH2,
                Text(
                  sight.details,
                  style: AppTypography.smallText14Regular
                      .withColor(AppColors.secondary2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
